/// @description Insert description here
// You can write your code in this editor
image_index = 0;
image_speed = 0;


//write your messages in an array, starting at 0, like so
message[0] = "Hello there! Welcome to the world of Pokemon!";
message[1] = "My name is Oak! People call me the Pokemon Prof!";
message[2] = "This world is inhabited by creatures called Pokemon!";
message[3] = "For some people, Pokemon are pets.";
message[4] = "Others use them for fights.";
message[5] = "Myself...";
message[6] = "I study Pokemon as a profession.";

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 6; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message


