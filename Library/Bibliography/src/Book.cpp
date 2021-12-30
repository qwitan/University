/*
 * book.cpp
 *
 *  Created on: Dec 6, 2021
 *      Author: Christian
 */

#include "Book.h"

Book::Book() // Used to help define a function outside of the book class
: Medium(), publisher("") // The list is initialized outside the body of the constructor so that we may be able to 'change' a const variable
{
}

Book::Book(const string unique, const string author, const string title, const int publicationYear, string publisher) //// Used to help define a function outside of the book class
: Medium(unique, author, title, publicationYear), publisher(publisher) // The medium constructor is invoked second initialization list ////the list is initialized outside of the constructor with the given values of Medium
{
}

Book::~Book() // the array in our classes are being created dynamically so we need delete it
{
}
void Book::setPublisher(string publisher)  // setter sets the publisher string value in a given position in a Book
{
	this->publisher = publisher;  // this pointer to pass current object of publisher
}
string Book::getPublisher()  // get the publisher  of the object in a given Book
{
	return this->publisher;
}
string Book::toString() const // to string method to return the values of the given values in book
{ //returns the publication year and publisher per the given format requirements
    return (Medium::toString() + '\n'+'\t' + to_string(Medium::getPublicationYear()) + "," + this->publisher + '.'+'\n');

}


