import Cocoa

//In this playground we will be going over number data types within swift, mostly considering how we store numbers in swift

//First lets look at how swift handles intergers (Whole numbers)

//Since there are no decimal values swift will automatically consider this an int
let score = 10

//Swift is pretty good at handeling numbers and how we type them lets test this out
let bigNumber = 1000000

//If for some reason you wanted to use undersores to space out the zeros Swift would still be capable of seeing this the same way it sees bignNumber
let bigUnderNumber = 1_00_0000

//Now lets try doing a bit of addition to see how swift handles this
var counter = 10
counter = counter + 5

//We can shorthand our previouse line for a more clean and much quicker to type expression (this short hand expression is known as compound assigment operators)
counter += 5

//It is possible to do this with the other mathmatical operators
counter *= 5
counter -= 90
counter /= 2

//The above code shows us how we can times a value by another, substract or share

//Now lets have a quick look at a useful operator that works with intergers that tells us if a value is the multiple of another

let value = 120
//The code does the following chekcs the variable value -> divides our variable by the value held in the operation brackets -> returns a true or false response
print(value.isMultiple(of: 3))//This will return true

//We could change this so we are manually inputting the int we want to check against instead of using a variable:
print(120.isMultiple(of: 3))


//We will now have a look at float and how swift handles these

//Heres an intresint respone swift can give you lets try adding two doubles together and see the result

let doubleAdd = 0.1 + 0.2
print(doubleAdd) //This prints out 0.3000000004
//The above issues occures based on how computers store numbers even with a large number it will still try to store it as if its a really small number

//Now lets move onto some intresting and useful facts about swifts handelings in certain situations

//Now althought the bellow values are technincally the same, thanks to the decimal point swift will assing the doubleValue as a double instead of a whole number/int
let intValue = 2
let doubleValue = 2.0

//Thanks to swifts type saftey its impossible to accidently to add a int to a doulbe (Though it is possible to do this if we specify) lets have a quick look at this

let a = 5
let b = 10.0
//let c = a + b
//if uncomented value C we would gert an error specificy we can't assign the addition operator between these two diffrent data types

//But how about we make this actually work
//In this we are converting value B to an int type to allow the addition to work
let d = a + Int(b)
//This can be done in reverse allowing us to convert a int to a Double
let e = Double(a) + b

//This is swifts saftey net it ensures the devloper is certain they want to do this and allows them to convert to a data type that will conform with the other

