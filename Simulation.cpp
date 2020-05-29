//
// Created by proxpxd on 5/22/20.
//

#include "Simulation.h"

Simulation::Simulation() = default;
Simulation::Simulation(vector<Region> &regions, vector<string> &disease_data) {
    disease_name = disease_data.at(0);
    alpha = Region::stod(disease_data.at(1));
    beta = Region::stod(disease_data.at(2));
    gamma1 = Region::stod(disease_data.at(3));
    gamma2 = Region::stod(disease_data.at(4));
    this->regions = move(regions);
    setInitialValues();
    setNumberOfCores();
}

void Simulation::setInitialValues() {
    for(Region &r: regions){
        r.setCoefficients(alpha, beta, gamma1, gamma2);
    }
}

void Simulation::setSavingFrequency(int _days) {
    savingGap = _days;
    for(Region &r: regions)
        r.setHistorySize(savingGap);
}

void Simulation::setMaxDays(long max) {
    maxDays = max;
}

void Simulation::setRegionZero(const string &location) {
    regionZeroName = location;
}

void Simulation::setSavingDirectory(const string &path) {
    savingDirectory = fs::path(path);
    if (!fs::exists(savingDirectory))
        fs::create_directory(savingDirectory);
    else
        for(const auto &file: fs::directory_iterator(savingDirectory))
            fs::remove(file);
}

bool Simulation::isDiedOut() {
    for(const Region &r: regions)
        if (r.isExposed())
            return false;
    return true;
}

vector<Region>::iterator Simulation::getRegionIt(string &regionName) {
    auto regionZeroItr = find_if(regions.begin(), regions.end(), [regionName](Region &r)-> bool {return r.getName() == regionName;});
    return regionZeroItr;
}

void Simulation::initialiseRegionZero() {
    auto regionIt = getRegionIt(regionZeroName);
    if (regionIt != regions.end()){
        regionIt->setPatientZero();
    } else {
        Region &initialRegion = regions.at(rand() % regions.size());
        regionZeroName = initialRegion.getName();
        initialRegion.setPatientZero();
        cout << regionZeroName << " has been chosen for a region zero" << endl;
    }
}

void Simulation::saveData(){
    criticalSection.lock();
    while (vecIterator != regions.end()) {
        Region &activeThreadRegionHistory = *vecIterator;
        vecIterator++;
        criticalSection.unlock();
        if(!activeThreadRegionHistory.getIsHistoryEmpty()){
            saveRegionHistory(activeThreadRegionHistory);
        }
        criticalSection.lock();
    }
    criticalSection.unlock();
}

void Simulation::saveRegionHistory(Region &regionToSaveHistory){
    int ** history = regionToSaveHistory.getHistory();
    fstream regionFile;
    regionFile.open( savingDirectory / regionToSaveHistory.getName(), fstream::out | fstream::app);
    int size = regionToSaveHistory.getHistoryDay();
    int width = regionToSaveHistory.getHistoryWidth();
    for (int i = 0; i < size; i++){
        for (int j = 0; j < width; j++){
            regionFile << history[i][j];
            if(j!=5)
                regionFile << ';';
        }
        regionFile << endl;
    }
    regionFile.close();
    regionToSaveHistory.clearHistory();
}

void Simulation::setNumberOfCores(){
    coreUsable = max(1u,thread::hardware_concurrency());
}
void Simulation::runThreads(int coreUsable){
    vecIterator = regions.begin();
    for (int i = 0; i < coreUsable; i++)
        threads.emplace_back(thread(&Simulation::saveData, this));

    for (int i = 0; i < coreUsable; i++)
       threads[i].join();

    for (int i = 0; i < coreUsable; i++)
        threads.pop_back();

}

void Simulation::simulate() {
    initialiseRegionZero();
    //maxDays <= 0 - for negative maxDays simulation runs till end
    while (!isDiedOut() && (maxDays <= 0 || day < maxDays)){
        for(Region &r: regions) {
            if (r.isExposed()){
                r.makeSimulationStep();
                randomInfectFrom(r);
                r.addDataHistory(day);
            }
        }

        if (day % savingGap == 0)
            runThreads(coreUsable);

        day++;

    }
    runThreads(coreUsable);
}

void Simulation::randomInfectFrom(const Region &region) {
    if(region.getInfectionChance())
        region.infectOtherCountry(region.getConnections());
    if(region.getInfectionChance())
        region.infectOtherCountry(region.getFlights());
}
