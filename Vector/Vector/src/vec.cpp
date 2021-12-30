//============================================================================
// Name        : vectorV2.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
using namespace std;
#include "vec.h"

Vector::Vector() // default constructor
{
	//cout << "Default constructor being called" << endl;
	dimensions = 1; // set the dimensions of the vector
	coordinate = new double[1]; //create the array of doubles, has a single coordinate
	coordinate[0] = 0; // sets it to zero

}

Vector::Vector(int dim) //  constructor used to specify the number dimensions in the vector
{
	//cout << "2nd constructor being called" << endl;
	dimensions = dim; // set the dimensions equal to the parameter dim.
	coordinate = new double[dim]; //create the array of doubles the size of the array dim
	for (int i = 0; i < dim; i++) // creates it dynamically in a  for loop / for i going up to one less the dimension
		coordinate[0] = 0; // initialize the coordinates to 0 for the for loop.

}

Vector::Vector(double* coords, int dim) //  constructor used to specify the array of coordinates set up as an array to double and specifies the number dimensions in the vector
{
	dimensions = dim; // set the dimensions equal to the parameter dim.
	coordinate = new double[dim]; //create the array of doubles the size of the array dim
	for (int i = 0; i < dim; i++) // creates it dynamically in a  for loop / for i going up to one less the dimension
		coordinate[i] = coords[i]; // initialize the coordinates to the incoming array of coordinates

}


Vector::~Vector() // the array of coordinates in our classes are being created dynamically so we need delete it
{
	//cout << "Destructor for: " << *this << " being called!" << endl;
	delete[] coordinate; coordinate = nullptr; // delete the given array // square brackets are used so that we can delete more than one element of that type
	// sets it to nullptr otherwise it's is set that address and may crash.
}

void Vector::setcoord(double value, int position) //creates a setter to set a coordinate in the given vector // first parameter is going to be the value and the second will be the position in the array
{
	coordinate[position] = value; // go to the c sub position in the array and set that equal to the incoming value
}

double Vector::getcoord(int position) // from the getter we get the position and the value in the array from the vector
{
	return coordinate[position]; //returns the position where c is the array of the coordinates
}

int Vector::getDimensions() // returns the dimensions of a given vector
{
return dimensions;
}

double Vector::dot(Vector& other) // sums the product of two varying vectors
{
	double total = 0; //sets the total to zero to prevent weird business
	for (int i = 0; i < dimensions; i++)  // creates it dynamically in a  for loop / for i going up to one less the dimensions
		total += (coordinate[i] * other.coordinate[i]); //takes the total and increments it by the product of the coordinate multiplied by the product of the other coordinate
	return total; // returns the total
}


ostream& operator << (ostream& out, Vector& x) // pass in the out stream by reference
{
	out << "("; // outputs the vector within the open bracket
	for (int i = 0; i < x.dimensions - 1; i++) // creates it dynamically in a  for loop / for i going up to two less the dimensions
	{
		out << x.coordinate[i]; out << ","; // out the i and then display a comma
	}
	out << x.getcoord(x.dimensions - 1); // out streams the last output without a comma
	out << ")"; // closes the vector with a bracket the bracket
	return out; // returns the output stream by reference.
}



