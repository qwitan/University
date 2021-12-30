/*
 * vec.cpp
 *
 *  Created on: Nov 25, 2021
 *      Author: Christian
 */

#include <iostream>
using namespace std;
#include "vec.h"

int main() {

	int vectorSize = 3; //set the size of the vector
	Vector v; // creates a vector u using the default(empty) constructor

	cout << "Enter the size of your vectors: "; // the user inputs the size of the vectors
	cin >> vectorSize;
	cout << "--------------" << endl; //space

	// calls a different constructor
	Vector a(vectorSize); // creates the first vector of the specified size
	Vector b(vectorSize); // creates the second vector of the specified size
	// specifies the size and creates the array and sets the elements to zero

	double entry; // create array named entry
	for (int i = 0; i <vectorSize; i++) // for loop to increment i as long as the vector size is greater than i
	{
		cout << "Enter a[" << i << "]: "; //user enters v sub i (0,1,2,... 1-vectorSize)
		cin >> entry;
		a.setcoord(entry,i); //sets the coordinate in the vector specified by the setcoord method // entry is placed in the i coordinate position
	}


	for (int i = 0; i <vectorSize; i++) // for loop to increment i as long as the vector w size is greater than i
	{
		cout << "Enter b[" << i << "]: "; //user enters w sub i (0,1,2,... 1-vectorSize)
		cin >> entry;
		b.setcoord(entry,i); //sets the coordinate in the w vector specified by the setcoord method // entry is placed in the i coordinate position
	}

	cout << "--------------" << endl; //space
	// overloaded ouput stream operator "<<"
	cout << "Vector v = " << v << endl; // object u is a vector that the user created that will be put into the stream which is allowed because the class is friendly with the output stream
	cout << "Vector a = " << a << endl; // object v is a vector that the user created that will be put into the stream
	cout << "Vector b = " << b << endl; // object w is a vector that the user created that will be put into the stream

	cout << "Dot Product ab = " << a.dot(b) << endl; //take the dot product of the two vectors given any size of the vectors.

	return 0;
}

