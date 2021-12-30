/*
 * List.h
 *
 *  Created on: Nov 4, 2021
 *      Author: Christian
 */

#ifndef LIST_H_
#define LIST_H_

class List{
private:     						//parts that can be accessed by the functions by the class that is defined

	struct node
	{
		int data;   // stores the data of each node
		node* next; // point to the next node in the list
	};

	typedef struct node* nodePtr;   // allow me to type nodePtr instead of node*

	nodePtr head;
	nodePtr current;
	nodePtr temp;


public: 							//Place for our functions

	List();   // construction function sets values for the 3 values above
	void AddNode(int addData);		// add node and place a certain int variable into it
	void DeleteNode(int delData);  // the value passed into delete data will be used in the DeleteNode function and finds it in the list to delete it
	void PrintList(); //shows the user list


};




#endif /* LIST_H_ */
