import Cocoa

///Theres two ways to join strings together in swift,
///the first option is to use +
///the second is string interoplation


//Using +

let partOne = "Hello "
let partTwo = "World"
let combineGreeting = partOne + partTwo //The plus symbol allows us to add the two variables together to create a new variable

//We can also use the + opperator in a few diffrent ways
let greetingOne = "Welcome to the"
let greetingTwo = ", Have a look around"
let completeGreeting = greetingOne + " interent" + greetingTwo //We can also use the plus opeerator to with strings not declared via variables

//Though the + operator may add  doubles or ints together but what we see here is operator overloading
//This allows for the + function to have more then one use

//String interoplation
let name = "Dj" //String
let age = 19 //Int

let greeting = "Hello my name is \(name), and I am \(19) years old" //If we tried to use the + operator instead we couldnt combine these as it does not allow a string + int combo
print(greeting)

//you can also use interpolation to
print("5 x 10 = \(5 * 10)")
let math = 5

