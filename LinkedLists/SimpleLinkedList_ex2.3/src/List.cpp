/*
 * List.cpp
 *
 *  Created on: Nov 4, 2021
 *      Author: Christian
 */


#include <cstdlib>  //pre-processed directives, include standard lib
#include <iostream>
#include "List.h" // includes our header file

using namespace std;

List::List() //define the function from the class in the header file ; define the constructor
{
	head = NULL;    //define the private data members
	current = NULL;
	temp = NULL;
}


void List::AddNode(int addData) //define function from the list class
{
	nodePtr n = new node; //create a new node and make the pointer point to it; definition of the Addnode function.
	n->next = NULL; //find the node that n is pointing to, access the next element and then make that point to NULL
	n->data = addData; //fill the node with data by passing it into our variable function.

	if(head != NULL) //if head is pointing to an object then we use it. access private data since its part of the AddNode class
	{
		current = head;  // list is set up, make the current pointer point to the start of list

		while(current->next != NULL) // check to see if its the end of the list, and will exit the while loop
		{
			current = current->next; //advances the current pointer until it gets to the last node in the list
		}
		current->next=n; //next element is going to point to n which is going to point to Null
	}
	else // if we don't have an element in the list, tell the new node that it'll be the start of the list
	{
		head = n;
	}
}

void List::DeleteNode(int delData) // pass in data from variable delData, start at list then when we find the node that contains the value stored in delData then we will delete it.
{
	nodePtr delPtr = NULL;
	temp = head; // trail the current pointer to patch the missing value in the list
	current = head; //pointer set to the start of the list

	while (current != NULL && current->data != delData) //passed all the way through the list and should exit the loop
														//; make sure the data that is in the node that the current pointer is pointing to should not to the delData so that we can exit the loop
	{
		temp = current; //makes sure that temporary pointer is behind
		current = current->next; //advances to the next node in the list
	}
	if(current == NULL) //passed through the list but did not find anything
	{
		cout << "The data " << delData << " was not within the list.\n";
		delete delPtr; //remove the delPtr as it is not being used
	}
	else // case that we found the node with the matching data
	{
		delPtr = current; //point to the node to delete
		current = current->next; //advances the current pointer
		temp->next =current; //patches the list

		if(delPtr == head) //if the delPtr is pointing to the head of the list
		{
			head = head ->next; //advance the head to the next
			temp = NULL;
		}

		delete delPtr;
		cout << "The data " << delData << " has been removed.\n";
		cout << "------------------------------------\n";
	}
}

void List::PrintList()
{
	current = head; //current pointer is going to point to the head of the list
	while(current != NULL) // as long as current does not equal to null
		{
		cout << current->data <<endl; // print contents of node the pointer is pointing to
		current = current->next; //goes to the next node
	}
}
