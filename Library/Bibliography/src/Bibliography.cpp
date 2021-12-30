//============================================================================
// Name        : Bibliography.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
using namespace std;
#include "Bibliography.h"

Bibliography::Bibliography(unsigned int size) //// Used to help define a function outside of the Bibliography class
: size{size}, entries(0), place(new Medium *[size]) // The list is initialized outside the body of the constructor so that we may be able to 'change' a variable
{
}

Bibliography::~Bibliography()  // the array in our classes are being created so we need delete it
{
    delete[] place; //calls the appropriate Biblio desconstructor for each element in the array to Deallocate storage space
}

bool Bibliography::insert(Book *data)
{ // the variable data points to a location in memory that contains a character in Book

    if (this->entries < this->size) // looks for free space and if
    {
        if (data) // if the given data is acceptable then the data is inserted
        {
            this->place[this->entries] = data;
            this->entries++; //increments the entries until we return outside the nested if statement
            return true; // inserts the data as long as it is true
        }
    }
    return false; // Returns false if the if statement is not true and there is no space available
}
bool Bibliography::insert(Article *data)
{ // the variable data points to a location in memory that contains a character in Book

    if (this->entries < this->size) // looks for free space and if
    {
        if (data) // if the given data is acceptable then the data is inserted
        {
            this->place[this->entries] = data;
            this->entries++; //increments the entries until we return outside the nested if statement
            return true; // inserts the data as long as it is true
        }
    }
    return false; //Returns false if the if statement is not true and there is no space available
}
Medium *Bibliography::operator[](const string unique) // calls to a location in memory that contains a unique given a medium
{

    for (size_t i = 0; i < this->entries; i++) //for loop to go through the given pointer elements of library
    {// unnassigned datatype
    	if (this->place[i]->getUniqueAbbreviation() == unique) //if and element is found and it matches the getter with a given unique
        {
        	return this->place[i]; //return the unique match
        }
    }
    return nullptr;
}


ostream &operator<<(ostream &output, const Bibliography &l) // overload the output operator for out stream so it returns the content of library
{//pass in the out stream by reference, and pass in the vector by reference
	//declares the out stream a friend so that we can use it in cout. (A non-member function can access the private and protected members of a class if it is declared a friend )
    output << '(';
    for (size_t i = 0; i < l.entries; i++) // for loop to go through the given entries as long as the int is less than the entries
    { // unnassigned datatype
        if (i != l.entries - 1) //as long as i is one less the number of entries out stream
        {
            output << l.place[i]->toString(); //out stream the i and continue
            continue;
        }
        output << l.place[i]->toString() << ')'; //out stream the data and close the paranthesis
    }
    return output;
}
