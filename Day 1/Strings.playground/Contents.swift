import Cocoa

///In this playground we will be going over how strings behave within swift we will consider:
///- Multiline strings
///- How to add elements like quotes into a string
/// - The diffrentt commands within strings that allow us to interact with strings in diffrent ways


//Since swift automatically assigns all we have to do is give our variable a name
let greeting = "Hello there!"

//We can also have our strings hold special charaters such as punctionation or even emojies!
let congrats = "⭐️Well done!⭐️"

//If we want to use quotes in our strings we have to use a specific syntax so it doesnt end the string accidently
//To do this we use a slash followed by a quotation
let quote = "Some say he was \"tall\" others say he was just average"

//Now lets write a string over multiple lines
//to do this we use three quotes to open and close
let titleSeason = """
The Big Bang Theory
Sesaon 3
"""

//Now we'll go over some useful functions used to interact with strings within swift
//Lets set up some variables first

let seriesTitle = "The Big Bang Theory"
let fileFormat = ".PNG"
let drink = "coca cola"

//First we'll go over the count function

//The count function also counts spaces so in this repsone we'll get a count of 19
print(seriesTitle.count)

//We can also make a variable that counts the legnth instead and then call it in a print method
let titleLength = seriesTitle.count
print(titleLength)

//Now lets try changing all the characters in a string to an uppercase
//You'll notice we're using double brackets here, the double brackets are used to represent that swift is changing our data
print(seriesTitle.uppercased())


//Now we'll go over the checking for prefix function
//This allows us to check wether or not a string has a specfic set of characters at the begining or end depending on the used prefix

//The hasPrefix checks the begining of the string
print(drink.hasPrefix("coca")) //This will return either a true or false

//Checks the end of the string
print(fileFormat.hasSuffix("PNG"))

//Strings in swift are casesensitive so if we made the previouse snipet of code to png we'd return a false
print(fileFormat.hasSuffix("png"))

