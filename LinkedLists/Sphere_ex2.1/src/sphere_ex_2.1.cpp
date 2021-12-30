//============================================================================
// Name        : 1.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================


#include <iostream>
using namespace std;
#include <cmath> // for the power



void getinfo(float& radius);  // prototype of the function
void calcSurfaceAndVolumeOfSphere(float radius, float& surface,float& volume); // prototype of the function
void Display(float surface,float volume); // prototype of the function


int main()
{

	float radius, surface, volume;  // sets the datatype


	getinfo(radius);   // main program executes and causes getinfo first to received the radius from the user as it is undefined
	 calcSurfaceAndVolumeOfSphere(radius,volume, surface); // then it will call the calculate function and pass the radius information to the calc function; after the call it sets reference values to the volume and surface
	Display(surface, volume); // calls the display function for the two parameters

	system("pause");
	return 0;
}

void getinfo(float& radius)  // first we get info and store the information of the radius, which returns the information back to main
{
		cout << "\n\n calculate the volume and surface of a sphere: \n";
		cout << "===================================================\n";
		cout << "Enter radius of a sphere: ";
		cin>>radius;    // stores the information and is returned to main

}


	void  calcSurfaceAndVolumeOfSphere(float radius,float& volume, float& surface) //set parameters and reference parameters and sets references for the two calculations of the sphere after the call.
	{
		float PI = 3.14159; // set the variable for pi
		int nom = 4; // set the variable for the nominator for the volume and surface functions
		int den = 3;  // set the variable for the denominator for the volume and surface functions

		volume = ((nom / den) * PI * (pow(radius, 3))); // goes back to the main  and sets the information ; formula for the volume
		surface = nom * PI * radius * radius; // // goes back to the main  and sets the information ; formula for the surface
	}

	void Display(float surface,float volume) {
	cout << "The volume of the sphere is: " << volume << endl;  // prints the stored volume information from main of the sphere
		cout << "The surface of the sphere is: " << surface << endl;  // prints the stored surface information from main of the sphere
		cout <<endl;
	}
