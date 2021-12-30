/*
 * Article.cpp
 *
 *  Created on: Dec 6, 2021
 *      Author: Christian
 */

#include "Article.h"
using namespace std;

Article::Article()  // Used to help define a function outside of the Article class
: Medium(), magazineName(""), magazineNumber(0), pageNumber(0) // // The list is initialized outside the body of the constructor so that we may be able to 'change' a const variable
{
}

Article::Article(const string unique, const string author, const string title, const  int publicationYear,
                 const string magazineName, const int magazineNumber, const  int pageNumber) // // Used to help define a function outside of the Article class
: Medium(unique, author, title, publicationYear), magazineName(magazineName), magazineNumber{magazineNumber}, pageNumber{pageNumber}
// // The medium constructor is invoked second initialization list ////the list is initialized outside of the constructor with the given values of Medium
// in addition to the new values of article
{
}

Article::~Article() // // the array in our classes are being created dynamically so we need delete it
{
}

void Article::setMagazineName(std::string magazineName) //// setter sets the name string value in a given position in a Article
{
	this->magazineName = magazineName; // this pointer to pass current object of magazine name
}
string Article::getMagazineName()  // gets the name  of the object in a given article
{
	return this->magazineName;
}

void Article::setMagazineNumber(int magazineNumber)  // setter sets the number int value in a given position in a Article
{
	this->magazineNumber = magazineNumber; // this pointer to pass current object of magazine number
}
int Article::getMagazineNumber()   // gets the magazine number of the object in a given article
{
	return this->magazineNumber;
}

void Article::setPageNumber(int pageNumber) // setter sets the page number int value in a given position in a Article
{
	this->pageNumber = pageNumber; // this pointer to pass current object of page number
}
int Article::getPageNumber()  // gets the page number of the object in a given article
{
	return this->pageNumber;
}

string Article::toString() const //overides so that we get return a string given the format provided
{

    return (Medium::toString() + '\n' + '\t' +
            this->magazineName + ',' + to_string(this->magazineNumber) + ',' +
            to_string(Medium::getPublicationYear()) + ',' + to_string(this->pageNumber));
}


