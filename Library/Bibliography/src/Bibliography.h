/*
 * Bibliography.h
 *
 *  Created on: Dec 6, 2021
 *      Author: Christian
 */

#ifndef BIBLIOGRAPHY_H_
#define BIBLIOGRAPHY_H_

using namespace std;
#include "Article.h"
#include "Book.h"
#include <ostream>
class Bibliography // constructs class Bibliography for a set of given parameters
{ // used to manage the media information of different public types: articles,books
private:
	unsigned int size; // control the number of entries by recording positive
	unsigned int entries; //control the number of entries by recording positive
    Medium **place; //points to a location in memory that contains a pointers that points to a location in memory that contains Medium pointers

public:
    Bibliography();  //empty default constructor
    Bibliography(unsigned int size = 1); //constructor which sets the number of object size to one
    ~Bibliography();// default destructor for the Biblithek

    bool insert(Book* data); // overloaded method to insert the objects of the base class // the variable data points to a location in memory that contains a character in Book
    bool insert(Article* data); //  overloaded method to insert the objects of the base class //the variable data points to a location in memory that contains a Article in Book
    // overloaded the default operator to return the pointer to the object with the given unique
    Medium *operator[](const string unique); // calls to a location in memory that contains a unique given a medium

    friend ostream &operator<<(ostream &output, const Bibliography &l); // overload the output operator for out stream so it returns the content of library
    	//pass in the out stream by reference, and pass in the vector by reference
    	//declares the out stream a friend so that we can use it in cout. (A non-member function can access the private and protected members of a class if it is declared a friend )
};

#endif /* BIBLIOGRAPHY_H_ */
