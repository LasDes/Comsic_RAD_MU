//******************************************************
//*      Cosmic Muons Monte Carlo Simulation           *
//*                                                    *
//*      Alexis FAGOT                                  *
//*      alexis.fagot@ugent.be                         *
//*                                                    *
//*      Janvier 16, 2016                              *
//*                                                    *
//*      HEADER FILE                                   *
//******************************************************


#ifndef FONCTIONS_H
#define FONCTIONS_H

#include <iostream>
#include <cstdlib>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <cmath>
#include <random>

using namespace std;

//Define necessary variables
const double __scint_L = 32.; //scintillator «L»ength
const double __scint_W = 9.4; //scintillator «W»idth
const double __muon_H  = 20.; //top scintillator plane «H»eight
const double __scint_D = 10.;  //«D»istance in between the sintillator planes
const double __scint_S = 20.; //Distance to the «S»creen (vertical distribution)

//********************************************************************************************

//Function to cast an integer into a string
string intTostring(int value){
    string word;
    stringstream ss;
    ss << setw(2) << setfill('0') << value;
    ss >> word;

    return word;
}

//********************************************************************************************

//Definition of Coordinates
struct Point{
    double x;
    double y;
    double z;
};
typedef Point Vector;

//A (theta,phi) angle pair.
typedef std::pair<double,double> Direction;

//********************************************************************************************

//pi Definition
const double PI = 4*atan(1);

//********************************************************************************************

//function that builds a vector from 2 points
Vector makeVector(Point A, Point B){
    Vector AB;
    AB.x = B.x - A.x;
    AB.y = B.y - A.y;
    AB.z = B.z - A.z;

    return AB;
}

//********************************************************************************************

//Shorthand notation to make the code more understadable and to allow for
//drop-in replacement by another C++11 random number generator.
typedef std::mt19937 Generator;

//A fonction that generate a random position within a certain rectangle
double getRandom(Generator& generator){
    return generate_canonical<double, 32>(generator);
}

double getRandomInRange(Generator& generator, double x0, double length){
    return length*getRandom(generator) + x0;
}

//********************************************************************************************

//A fonction that generates a cos^2 cosmics distribution
Direction getRandomDirection(Generator& generator){
    double phi = 2*PI*getRandom(generator);

    // Create cos²(theta) distribution
    double theta = PI*getRandom(generator)/2.;
    double test = getRandom(generator);

    while (test > cos(theta)*cos(theta)){
        theta = PI*getRandom(generator)/2.;
        test = getRandom(generator);
    }

    return make_pair(theta, phi);
}

//Generate a random hit in the cosmic plane that is defined to be situated
//right at the height of the lowest point of the scintillators via the
//variable height
Point getRandomMuonPosition(Generator& generator, double height){
    Point muon;

    muon.x = getRandomInRange(generator, -50., 50.);
    muon.y = getRandomInRange(generator, -50., 50.);
    muon.z = height;

    return muon;
}

//********************************************************************************************

//Compute the hit position in the scintillator planes knowing the equation of the planes
//calculated by hand and using the origin of the muon, its direction (details on calculation
//in the hand notebook)
Point getHitPosition(const Point& P, const Direction& D, double alpha, double scint_D, double scint_H, string which){
    Point I;

    double numerator = 2*((P.z-scint_H)*cos(alpha)-P.y*sin(alpha));
    double denominator = 2*(sin(D.first)*sin(D.second)*sin(alpha)+cos(D.first)*cos(alpha));

    double t = 0.;

    if(which == "TOP")    t=(numerator+scint_D)/denominator;

    if(which == "BOTTOM") t=(numerator-scint_D)/denominator;

    if(which == "GROUND") t = -P.z/cos(D.first);

    if(which == "SCREEN") t = -(scint_H+P.y)/(sin(D.first)*sin(D.second));

    I.x = P.x + sin(D.first)*cos(D.second)*t;
    I.y = P.y + sin(D.first)*sin(D.second)*t;
    I.z = P.z + cos(D.first)*t;

    return I;
}

//********************************************************************************************

//Check if the muon is in the scintillator surfaces
bool isInScint(const Point& P, const Direction& D, double alpha, double scint_D, double scint_H, string which){
    Point I = getHitPosition(P,D,alpha,scint_D,scint_H,which);

    //********************* X

    double x_low = -__scint_L/2.;
    double x_high = __scint_L/2.;
    bool x_condition = ( I.x > x_low && I.x < x_high );

    //********************* Y

    double y_low = -__scint_W*cos(alpha)/2.;
    double y_high = __scint_W*cos(alpha)/2.;
    double y_offset = scint_D*sin(alpha)/2.;

    if(which == "TOP"){
        y_low += y_offset;
        y_high += y_offset;
    } else if(which == "BOTTOM"){
        y_low -= y_offset;
        y_high -= y_offset;
    }
    bool y_condition = ( I.y > y_low && I.y < y_high );

    return (x_condition && y_condition);
}

#endif // FONCTIONS_H
