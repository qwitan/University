//============================================================================
// Name        : 3.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <cstdlib>  //pre-processed directives, include standard lib
#include "List.h"; //include header file
#include <iostream>
using namespace std;

int main(int argc, char** argv)
{


	List Plane;      //create the list object
	Plane.AddNode(15); // check the add node function
	Plane.AddNode(20);
	Plane.AddNode(25);
	Plane.PrintList();
	cout << "------------------------------------\n";

	Plane.DeleteNode(6);
	Plane.DeleteNode(20);
	Plane.PrintList();


	return 0;
}
