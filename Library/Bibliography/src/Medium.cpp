/*
 * Medium.cpp
 *
 *  Created on: Dec 6, 2021
 *      Author: Christian
 */

#include "Medium.h"
using namespace std;

// default constructor for empty strings and 0 int value
// Initialization list used to call the base class constructors before the body of the constructor executes
Medium::Medium() // Used to help define a function outside of the base class
: unqiueAbbreviation(""), author(""), title(""), publicationYear(0) // The list is initialized outside the body of the constructor so that we may be able to 'change' a const variable
{
}

Medium::Medium(const string unique, const string author, const string title, const int pubYear) // Used to help define a function outside of the base class
: unqiueAbbreviation(unique), author(author), title(title), publicationYear{pubYear} //the list is initialized outside of the constructor with the given values of Medium
{
}

Medium::~Medium() // the array in our classes are being created dynamically so we need delete it
{
}

void Medium::setUniqueAbbreviation(string unique) //creates a setter to set unique abbreviation of the given Medium. // first parameter is going to be the value of the String unique
{
	this->unqiueAbbreviation = unique; // this pointer to pass current object of unique
}
string Medium::getUniqueAbbreviation() // get the unique code of the object in a given medium
{
	return this->unqiueAbbreviation;
}

void Medium::setAuthor(string author) // set the author of the object in a given medium
{
	this->author = author; // this pointer to pass current object of author
}
string Medium::getAuthor() // get the author of the object in a given medium
{
	return this->author;
}

void Medium::setTitle(string title) // set the title of the object in medium
{
	this->title = title; // this pointer to pass current object of title
}
string Medium::getTitle() // get the title of the object in a given medium
{
	return this->title;
}

void Medium::setPublicationYear(int year)  // set the publication year of the object in medium
{
	this->publicationYear = year; // this pointer to pass current object of year
}
int Medium::getPublicationYear() const // get the publication year of the object in a given medium
{
	return this->publicationYear;
}

string Medium::toString() const // to string method to return the values of the given medium
{
	return '[' + this->unqiueAbbreviation + "] " + this->author + ": " + this->title;

}






