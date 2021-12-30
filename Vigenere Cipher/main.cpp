#include <iostream>

using namespace std;

char encrypt_character(char letter, char key) {
    return char((toupper(letter) + toupper(key)) % 26 + int('A'));  //returns encrypted character
}                                                                   //X + Y % 26 + 65           //calculates the shift between the letters
                                                // Y = ascii code of char from key, X = ascii code of char from message, 65 is ascii code of 'A'

char decrypt_character(char letter, char key) {
    return char((toupper(letter) - toupper(key) + 26) % 26 + int('A')); //returns decrypted character
}

void vigenere() {
    string message; //initialization of variables
    string key;
    string mode;
    bool encrypt = true;

    cout << "Encrypt or decrypt? " << endl;
    getline(cin, mode); //put user input into variable
    if(toupper(mode[0]) == 'D') //if input starts with 'd' or 'D', set mode to decryption
        encrypt = false;

    cout << "Write the message: " << endl;
    getline(cin, message);  //get message from user input

    cout << "Write a key: " << endl;
    getline(cin, key);  //get key from user input

    string resulting_message;

    for(int i = 0; i < message.length(); i++) { //loop through every character of message and key by index
        if(message[i] == ' ')   //if there's a space in the message, space is also appended to resulting message
            resulting_message += ' ';
        else {
            if(encrypt){    //if mode is set to encryption, use function encrypt_character(char x) to get the resulting char
                resulting_message += encrypt_character(message[i], key[i]);
            }
            else {          //if mode is set to decryption, use function encrypt_character(char x) to get the resulting char
                resulting_message += decrypt_character(message[i], key[i]);
            }
        }
    }
        //print out the result
    cout << "The " << ((encrypt) ? string("encrypted") : string("decrypted")) << " message is:\n" << resulting_message;
}

int main() {
    vigenere();
    return 0;
}
