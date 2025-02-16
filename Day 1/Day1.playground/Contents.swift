import Cocoa

///Day one focuses on using variables and how they act within swift
///Variables act in difffent ways depending on diffrent keywords and other functions within swift
///Bellow we will be going over how they work and how they act in certain scenarios

//Changing what a variable is storing

//The keyword VAR specifies that a new variable is being created and that its contents can also be edited
var name = "Jake"

//In the following two lines you can see how we are calling the variable "name" and editing its contents
name = "John"
name = "Elizabeth"


//Now we'll look at constents, these are like var's except the contents can't be edited
let colour = "Green"
//colour = "Blue"
//If we tried to call the const to edit its contents we would produce an error


//When testing your data you may want to use the print command
//Though you really won't use this often in actual app development its helpful while learning or testing
print(name)
