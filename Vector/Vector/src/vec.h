/*
 * vec.h
 *
 *  Created on: Nov 25, 2021
 *      Author: Christian
 */

#ifndef VEC_H_
#define VEC_H_

class Vector
{
private: //
	double* coordinate; // declares a pointer to dynamically allocate any number of dimensions during execution (an array)
	int dimensions; //this records the number of dimensions (the length of the array)

public:
	Vector(); // empty default constructor
	Vector(int dimensions); // specify the dimensions of a given vector and initialize all the coordinates to zero
	Vector(double* coordinates, int dimensions); // in the first parameter the coordinates are given as a pointer to double / specifies the dimensions in the second parameter
	~Vector(); // default destructor takes no parameters

	void setcoord(double value, int position); // setter sets the coordinate value in a given position in a vector
	double getcoord(int position); //getter returns a double which gets a coordinate in a vector given the position
	int getDimensions(); //returns the number of  dimensions this vector has

	double dot(Vector& other); // instance method to compute dot product of two vectors /takes every coordinate in the first vector times every coordinate in the second and sum the products.
	//double subtract(Vector& other, Vector& other);

	friend ostream& operator<< (ostream& out, Vector& a); // overload the output operator for out stream
	//pass in the out stream by reference, and pass in the vector by reference
	//declares the out stream a friend so that we can use it in cout. (A non-member function can access the private and protected members of a class if it is declared a friend )

};


#endif /* VEC_H_ */
