/*
 * Medium.h
 *
 *  Created on: Dec 6, 2021
 *      Author: Christian
 */
#pragma once //preprocessor directive makes the current source file to be included once in a single compilation // avoid name clashes,speed,less code
#include <string>
using namespace std;

#ifndef MEDIUM_H_
#define MEDIUM_H_

// base class to derive the different classes for different media types
class Medium // constructs class Medium for a set of given parameters
{
//parameters
private: //attributes common to all media
	string unqiueAbbreviation; //short name for a given media
	string author; //records the author
	string title; //records the title of a given media
	int publicationYear; //records the publication year
//constructs a new Medium from various given values
public:
	Medium(); //empty default constructor
	Medium(const string unique, const string author, const string title, const int pubYear); // constructs/compiles the parameters of the object
	virtual ~Medium(); // default destructor inside base class that calls the derived classes destructor before itself.


	void setUniqueAbbreviation(string unique); // setter sets the unique string value in a given position in a Medium
	string getUniqueAbbreviation(); //getter returns the String value and gets a string in a vector.

	void setAuthor(string author); // setter sets the author string value in a given position in a Medium
	string getAuthor(); //getter returns the String value from the Author of the given object.

	void setTitle(string title); // setter sets the title string value in a given position in a Medium
	string getTitle(); //getter returns the String value from the title of the given object.

	void setPublicationYear(int year); // setter sets the Publication year int value in a given position in a Medium
	int getPublicationYear() const; //getter returns the int value from the Publication year of the given object.

	virtual string toString() const; // note: returns object
};

#endif /* MEDIUM_H_ */
