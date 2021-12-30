/*
 * Article.h
 *
 *  Created on: Dec 6, 2021
 *      Author: Christian
 */

#ifndef ARTICLE_H_
#define ARTICLE_H_

using namespace std;
#pragma once
#include "Medium.h"

class Article // constructs class Article for a set of given parameters
: virtual public Medium // // diamond inheritance statement used to solve the multiple child classes, in which they may inherit from. extends the base class
{ //adding 3 new fields(Magazine name, number, page number)
private: //attributes common to all journal articles per requested
    string magazineName; //records the name
     int magazineNumber; //records the number
     int pageNumber; //records the page number

public:

    Article(); //empty default constructor

    Article(const string unique, const string author,const string title, const  int publicationYear, // constructs the new article given the new parameters of the objects
            const string magazineName, const int magazineNumber, const int pageNumber); // new parameters of the given article/magazine

   virtual ~Article(); // default destructor that will get called from the Base class

    void setMagazineName(string magazineName); // setter sets the name string value in a given position in a Article
    string getMagazineName(); //getter returns the String value and gets a string in the Article object.

    void setMagazineNumber(int magazineNumber); // setter sets the Magazine number int value in a given position in a Article
    int getMagazineNumber(); //getter returns the int value and gets a int in the Article object.

    void setPageNumber(int pageNumber); // setter sets the page number int value in a given position in a Article
    int getPageNumber(); //getter returns the int value and gets a int in the Article object.

    string toString() const override; // overides the base class with a toString method
};


#endif /* ARTICLE_H_ */
