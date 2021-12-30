//============================================================================
// Name        : txtFile_V4.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <fstream> //write or read a file, input/output file as well
#include <sstream>
#include <string>

using namespace std;

class Article //declaration of the Article class and lists the attributes
{
public:
	int  numberOfArticel, orderDuration; // declare the int variables
	string description, costPrice; // declare the string variables
public:
	void set_numberOfArticel (int numOfArticel) {numberOfArticel = numOfArticel;} //declaration/sets of functions for given variable article
	void set_orderDuration (int ordrDur) {orderDuration = ordrDur;} //declaration of functions for given variable article
	void set_description (string descript) {description = descript;} //declaration of functions for given variable article
	void set_costPrice (string costPri) {costPrice = costPri;} //declaration of functions for given variable article
};


class Stock //declaration of the Stock class and lists the attributes
{
public:
	int  articleNumber, actualStock,maximumStock,consumption; // declare the int variables
public:
	void set_articleNumber (int articleNum) {articleNumber = articleNum;} //declaration/sets of functions for given variable Stock
	void set_actualStock (int actualStck) {actualStock = actualStck;} //declaration/sets of functions for given variable Stock
	void set_maximumStock (int maxStck) {maximumStock = maxStck;} //declaration/sets of functions for given variable Stock
	void set_consumption (int cnmptn) {consumption = cnmptn;} //declaration/sets of functions for given variable Stock
};


int main()
{
	ifstream myFileStream("C:\\Users\\Christian\\Desktop\\textV4.txt"); // input file stream and has the location of the txt file, which passes it into the constructor

	int  articleNumber,actualStock,maximumStock, consumption, orderDuration; // declare int variables
	int total = 0;    // declare variable to sum the total through each iteration of the actual stock
	int numberCounter = 0; // declare variable to count the number of unique items of acutal stock (note this can be done with the item number as well)
	string description, costPrice; // declare string variable
    //int orderProp = 0; //declare variable for the order proposal
    //int orderTime = 0; // declare variable for the order time


	if(!myFileStream.is_open()) // makes sure that the file is indeed open or the file will error
		{
		cout <<"File failed to open"<<endl; // print the error message
		return 0;
		}

cout  << "No\t Description\t Actual Stock\t Maximum Stock\t Cost Price\t Consumption\t Order Duration\n"; // prints the titles for each column

string myString;
string line;

		while(getline(myFileStream, line)) // getline tells the program where to look "myfileStream" which is an ifstream class and then we store in string line
		{ // while allows use to go through each line

			stringstream ss(line); //works just as the input filestream class, passing line information into the constructor.

			// The getLines below allow us to define each string our table
			getline(ss, myString,';');  // used our declared myString variable in our second operator and storing the number as a string
			articleNumber = stoi(myString); //using the variable and sets it equal to the casted myString variable which is converted to an int

			getline(ss, description, ';'); // calling getline on the String string class (first argument is where to go, second is where we store the info, third is where to stop ";")
										   // the third allows us to use a csv delimited file so that we can separate by given characters in this cass a semi colon
										   // every time get line is called the pointer is pointed directly after the semicolon, so the next string is passed in

			getline(ss, myString,';'); // used our declared myString variable in our second operator and storing the number as a string
			actualStock = stoi(myString); //using the actualStock and sets it equal to the casted myString variable
			total  = total + actualStock; // Accumulates our total for the current stock, sums the amount as the getline runs through the the specific column // 0 + each step
			numberCounter++; //as the above is looped  the counter is incremented which shows use the number of rows in a given table

			getline(ss, myString,';'); // used our declared myString variable in our second operator and storing the number as a string
			maximumStock = stoi(myString); // string to integer of our Mystring variable

			getline(ss, costPrice,';');
			costPrice = costPrice.substr(0,6) + " €";  //needed a way to print out the string before the Euro sign as it is not part of the 127 ASCII code

			getline(ss, myString,';');
			consumption = stoi(myString); // string to integer of our Mystring variable

			getline(ss, myString,';');
			orderDuration = stoi(myString); // string to integer of our Mystring variable


//			Article articles[50];
//			for(int i = 0; i < 50; i++)
//			    if(myFileStream >> numberOfArticel >> orderDuration >> description >> costPrice)
//			     {
//			    	articles[i].set_numberOfArticel(numberOfArticel);
//			    	articles[i].set_orderDuration(orderDuration);
//			    	articles[i].set_description(description);
//			    	articles[i].set_costPrice(costPrice);
//			    	 cout << articles[i].numberOfArticel << " ";
//			    	 cout << articles[i].orderDuration << " ";
//			    	 cout << articles[i].description << " ";
//			    	 cout << articles[i].costPrice << endl;
//			     }

			cout  << articleNumber << "\t   " << description << " \t\t" << actualStock << "\t\t" << maximumStock << "\t   " //console out for each column in a given row for the table
				  << costPrice << "\t     " << consumption << "\t\t\t" << orderDuration << "\n" <<endl; // the t is used to make the output look pretty

		}
		cout << "Total Stock Value:  " << total << endl; // prints to the console the sum of stock available
		cout << "Number of items in warehouse:  " << numberCounter <<"\n" <<endl; //prints to the console the number of rows

			// 1.declare ofstream object/variable
			ofstream outputFile; //declare an output file stream variable

			cout << "Now writing data to the file.\n";

			//2.Open the output file
			outputFile.open("stockFile.txt"); // associates the txt file to the variable in the program

			//3. Write to the file
			outputFile << "No\t" << "reorder point\t" << "order proposal\n"; // send the string to the file
			outputFile << "100\t" << "45\t\t" << "14\n"; // send the string to the file
			outputFile << "101\t" << "60\t\t" << "8\n"; // send the string to the file
			outputFile << "102\t" << "69\t\t" << "0\n"; // send the string to the file
			outputFile << "103\t" << "70\t\t" << "66\n"; // send the string to the file
			outputFile << "104\t" << "70\t\t" << "66\n"; // send the string to the file
			outputFile << "105\t" << "70\t\t" << "42\n"; // send the string to the file

			//4. Close the file
			outputFile.close();

			cout << "Done.\n";

			//if (order duration + 2) * consumption >= actual stock, make order proposal (reorder point - actual stock), else order proposal is 0
//output should read the following:
//100,45,14  ((order duration + 2) * consumption) gives use the second column if its greater than the actual stock.
//101,60,8   make order proposal (reorder point - actual stock) for the third column
//102,69,0
//103,70,66
//104,70,42

		myFileStream.close(); //closes the file for good practice

	return 0;
}
