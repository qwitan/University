//============================================================================
// Name        : 5.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================


#include <iostream>
#include <cstdlib>
using namespace std;
//#include "DoubleList.h"; //include header file

typedef struct node* nodePtr; //so I do not have to repeat the pointers with stars
struct node // define the given nodes
	{
		int data; // hold integer value inside any given node
		nodePtr next;  // name the pointer next
		nodePtr prev; //point to the previous node
	};

//define functions for the node
void PrintList(nodePtr start); // prototype >> pass in the head pointer >> start at the first node and print till the end of the list
void reverseList(nodePtr tail); // prototype >> pass in the tail pointer >> start at the end node and print till the start of the list

int main()
{


	nodePtr start; //make head point to the start of the doubly linked list
	nodePtr tail; // points to the end of the given list
	nodePtr n; // assist in building a given list


	n = new node; // creates a new node and makes n point to the new node; reference it by the n pointer
		n->data = 1; // find the node that is reference by the n pointer and within the variable set it equal to the given variable  as a first node
		n->prev = NULL; //make sure that the previous pointer point to null as there should be nothing ; BEFORE START
		start = n; // initialize head pointer and it's pointing to n
		tail = n; // initialize tail pointer pointing to n

	n = new node; //n is pointing to the new node
		n->data = 2; // establishes the second data node to variable 2
		n->prev = tail;// link the second node back to the first node
		tail->next = n; //links the first node to the second node via the first nodes next pointer
		tail = n; // set tail to mark the end of the list

	n = new node; //n is pointing to the new node
		n->data = 3; // establishes the third data node to variable 3
		n->prev = tail;// link the second node back to the first node
		tail->next = n; //links the first node to the second node via the first nodes next pointer
		tail = n; // set tail to mark the end of the list

	n = new node; //n is pointing to the new node
		n->data = 4; // establishes the fourth data node to variable 4
		n->prev = tail;// link the second node back to the first node
		tail->next = n; //links the first node to the second node via the first nodes next pointer
		tail = n; // set tail to mark the end of the list
		tail->next = NULL; //very end of the last nodes next pointer should point to NULL ; AFTER END

PrintList(start); // calls the print forward function should print from start to end
reverseList(tail); // calls the print backwards function should print from end to start

	return 0;
}


void PrintList(nodePtr start) //creates the Print function definition
{


	nodePtr temp = start; // makes the temporary pointer point to the first node

	while(temp != NULL) //while the temp pointer is not equal to null it will print the values in the list
	{
		cout << temp->data << " "; // print the data of the node that temp is point to
		temp = temp->next; //traverses to the next node in the list by pointing to the next list

	}
	cout << "\n--------";
	cout << endl;
}

void reverseList(nodePtr tail) //creates the Print function definition
{

	nodePtr temp = tail; // makes the temporary pointer point to the last node

	while(temp != NULL) //while the temporary pointer is not equal to null it will print the values in the list
	{
		cout << temp->data << " "; // print the data of the node that temporary is point to
		temp = temp->prev; //traverses to the previous node in the list by pointing to the next list
	}
	cout << endl;
}


















