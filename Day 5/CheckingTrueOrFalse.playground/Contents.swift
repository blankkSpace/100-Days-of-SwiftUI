import Cocoa


///If statment allow for us to check a condition and run code based on a true (1) or false (0)

var skyIsBlue = true

//The sky is blue so the condition is set to true (1 binary representative) and can be ran
if skyIsBlue {
    print("I'd hope so")
}


let score1 = 85
let score2 = 45


//This code checks if the score1 is greater then the value of 80
//If this is true then the code will run
if score1 > 80 {
    print("You got a first!")
}


//The code here checks if score2 is bellow a certain number in this case
//it is true and it will run again
if score2 < 50 {
    print("You are a failure drop out")
}


//Lets try a block of if statments to see what will and wont run

let batteryPercentage = 17
let age = 67
let speed = 40


//This checks wether or not battery is equal to or less than 20
//As battery is 17 this will run
if batteryPercentage <= 20{
    print("Put your phone on charge")
}

//checks if age is more than 62
//this will run
if age > 62 {
    print("You can retire")
}

//Checks if speed is more then 90
//This will not run
if speed > 90 {
    print("Arent you going fast")
}

//Lets try running an if statment for strings

let nameOne = "Dave Lister"
let friendName = "Arnold Rimmer"

if nameOne < friendName{
    print("It's \(nameOne) vs \(friendName)")
}

//This condition will be met as friendName comes first alphabetically when sorted
if friendName < nameOne{
    print("It's \(friendName) vs \(nameOne)")
}


//Removing items in an index if over a specifed number

//Setting up thea array
var numbers = [1,2,3]

//Adding to the array
numbers.append(4)

////Removes a number if the amount is more then 3
if numbers.count >  3 {
    numbers.remove(at: 0)//Removes the oldest number/ first within the array
}

print(numbers)


//Checking strings
let country = "Canada"


//This won't play as it is not true if country was Australia then it would print
if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Annonymous" {
    print("Welcome, \(name)") //This would get the user name and print it if name wasnt annyomause
}

//
var username = "taylorswift13"

//Checks if the string username is empty
if username == "" {
    username = "Annoynmous"
}

//We also check the username by doing the following

//if username.count == 0 {
//    username = "Annomouse"
//}

//After checking the username is empty then prints out the username
print("Welcome, \(username)")


/////////////////////////////////////////////////
//Checking multiple conditions (Usinf if, else, and else if)
/////////////////////////////////////////////////

let userAge = 16

//Checking userAge

//Here the result will be false as user age is not equal to or more than 18
if userAge >= 18 {
    print("You can vote in the next election")
}

//This condition will be true as userAge is less then 18
if userAge < 18 {
    print("Sorry you are to young to vote")
}

//Changing to using an else statment
//Using this allows for swift to only need to check the userAge value once since as soon as the first condition it will be able to decide which of the two options is correct
if userAge >= 18 {
    print("You can vote in the next election")
} else{
    print("Sorry you are to young to vote")
}

//Else if statment

let a = false
let b = true

if a {
    print("Code to run if A is true")
}else if b{
    print("Code to run if a is false but b is true")
}else{
    print("Code to run if both a and b are false")
}


//Embeded if statment (Putting an if statment within another if statment

let temp = 25

//Runs because temp is above 20
if temp > 20{
    //Runs beacuse temp is bellow 30
    if temp < 30 {
        print("Its a nice day")
    }
}

//Lets do it the shorthand way!

//&& is called an AND statment if checks if two or more conditions are true
if temp > 20 && temp < 30 {
    print("Its a nice day!")
}

//Lets have a look at the OR operator

//We will be using user age from earlier
let hasParentalConsent = true

//If age is equal to or greater than 18 OR has parental consent
if userAge >= 18 || hasParentalConsent{
    print("You can buy this game!")
}

//Finally we'll combine these into a block of code as well as use some Enums

//Setting up the enum

//The naming convention for enums in swift is diffrent to variables instead we use Upeer camel case (The first letter of each word is an uppercase)
enum TransportOption {
    case airplan, helicopter, bicycle, car, scooter
}

//We're creating a new variable similar to other variables it has options
//These options are instead defined by the enum (We're making our own variable type!)
let transport = TransportOption.airplan

//If transport is equal to airplane OR equal to helicopter
if transport == .airplan || transport == .helicopter{
    print("Lets fly!")
} else if transport == .bicycle {
    print("Get off the roas")
}else if transport == .car {
    print("Its time for traffic")
}else{
    print("I'm going to hire a scooter")
}

//Switch statments (Its like a big if and else if statment block)

//Setting up an enum for the weather
enum Weather {
    case sun, rain, wind, snow, unknown
}

//Assigns sun to variable
let forecast = Weather.sun

//We could do this in a big if statment and make multiple else if statments or we could use a switch like so

//Setting up the switch block and assigning forecast as the variable needed to be checked
switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umberella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forecast generator is broken")
}

//Swift switches work diffrently, they will only run ONE condition
//In our example as soon as .sun is ran the switch statment is finsished


//One other condition for switch statments within swift is that they must be exhaustive meaning evrery possibe option must be checked/declared within the switch statment
//However there is a way around this with the use of a default statment

let place = "Metropolis"
switch place{
case "Gotham":
    print("You're Batman!")
case "New york":
    print("You're spiderman")
case "Wakanda":
    print("You're Black Panther!")
    
default:
    //The default is only called if all other options have been tried
    //Adding this stament at the begining would not work and would cause the code to break as it would be overlooked as it is not an expected starting condition
    print("Who are you?")
}

//As we know swift statments once a condition if found to be true the switch is exited, there is a way to avoid this though not used commonly but can be good to avoid repation
//Lets look at an example

// fallthrough = tells swift to run the condtion and then continue to play the following condition after

let day = 5
print("My true love gave to me....")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 Turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
