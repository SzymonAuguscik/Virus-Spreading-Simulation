//
// Created by proxpxd on 5/22/20.
//

#ifndef VIRUS_SPREADING_SIMULATION_SIMULATION_H
#define VIRUS_SPREADING_SIMULATION_SIMULATION_H

#include <iostream>
#include <vector>
#include <mutex>
#include <fstream>
#include <thread>
#include "Region.h"

using namespace std;

class Simulation {
private:
    string disease_name = "";
    string regionZeroName = "";
    double alpha = 0;
    double beta = 0;
    double gamma1 = 0;
    double gamma2 = 0;

    int days = 0;
    int savingGap = 0;
    long int maxDays = 0;
    vector<Region> regions;
    vector<Region>::iterator vecIterator;
    mutex criticalSection;
    int coreUsable;
    vector<thread> threads;

    //private methods
    vector<Region>::iterator getRegionIt(string &);
    void initialiseRegionZero();
public:
    Simulation();
    Simulation(vector<Region> &, vector<string> &);

    void setInitialValues();
    bool isDiedOut();
    void setSavingFrequency(int);
    void setRegionZero(string &);
    void setMaxDays(long);

    void simulate();

    void saveData();
    Region getRegion(vector<Region> &);
    void saveRegionHistory(Region regionToSaveHistory);
    void setNumberOfCores();
    void runThreads(int numberOfCores);
};


#endif //VIRUS_SPREADING_SIMULATION_SIMULATION_H
