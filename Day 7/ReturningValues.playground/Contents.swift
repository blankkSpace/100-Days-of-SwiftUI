import Cocoa

//The syntax for returning a value from a function

//The little arrow here tells swift what type of value we wish to return
func rollDice() -> Int {
    return Int.random(in: 1...6) //We then use the return keyword to pass the result back out of the function
}

let result = rollDice() // We are creating a variable that calls the function to hold the return
print(result)

func stringComparision (string1: String, string2: String) -> Bool{
    
    //.sorted() allows for us to rearange strings in alphabetical order
    //This chekcs for a true or false result and returns it
    return string1.sorted() == string2.sorted()
    
    //When doing a one line function we can actually remove the return keyword as swift
    //Can identify that the one line must be the return
}

let comparison = stringComparision(string1: "abc", string2: "cab")
print(comparison)


//Pythagoras function using sqrt method

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b) // Times a by a and adds it to b times b then using the sqr method to
    //Get the end result
}

let c = pythagoras(a: 3, b: 4)
print(c)

///It is still possible to use the return statment even if it has no return type
///This is useful in situations where a function may have given a specific result meaning we have no use for the rest of the function


//When is the return keyword not needed in a function?

//First we need to understand the diffrence between expressions and actions

//If we had code like this
let isAdmin = true
let isOwner = false
let isEditingEnabled = false

//What it would be really be seen as
//Is owner AND isEditing true OR isAdmin true
isOwner == true && isEditingEnabled || isAdmin
//Meaning this can be resolved to a single value making it an expression

//An action can be seen as something like
let name = "Otis"
//This string on its own couldnt become a value as we couldnt simply just call it


//A block of code like the one bellow  couldnt become a single value as we are calling two functions
if name == "Mave" {
    print("Hello Mave!")
    print("How are you? ")
}


