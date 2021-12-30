/*
 * Book.h
 *
 *  Created on: Dec 6, 2021
 *      Author: Christian
 */

#ifndef BOOK_H_
#define BOOK_H_

#pragma once //preprocessor directive makes the current source file to be included once in a single compilation // avoid name clashes,speed,less code
#include "Medium.h" // includes the Medium header file
using namespace std;
// needed for the derivation of the Medium class for the Book format

class Book // constructs class Book for a set of given parameters
: virtual public Medium // diamond inheritance statement used to solve the multiple child classes, in which they may inherit from
{
private:
    string publisher; //records the publisher of a given book
public:
    Book(); //empty default constructor for Book
    Book(const string unique, const string author, const string title, const int publicationYear, string publisher); // contructs a new Book with the given values
    virtual ~Book(); // default destructor that will get called from the Base class

    void setPublisher(string publisher); // setter sets the publisher string value in a given position in a Book
    string getPublisher(); //getter returns the String value and gets a string in the Book object.
    string toString() const override;
};


#endif /* BOOK_H_ */
