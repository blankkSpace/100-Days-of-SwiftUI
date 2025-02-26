import Cocoa


//Lets turn this block of print statments into a function we can use whenever!
print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")



//Starts by using the fumctionc keyword func
//We then provide it with a name which we use to call the function
//Then we have the brackets known as a function call site
func showWelcome(){
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

print() //Empty space


//Now lets call the fuction in doing this we will see the block of code
//printed twice
showWelcome()


//Functions with configuration
func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

//We call the function and then pass through a paramater for the number variable
printTimesTable(number: 5)

//Functions with more then one paramater

// In this function instead of having a preset end for the times table
//we allow us to select the end when the function is called
func printTimetableCustome(number: Int, end: Int){
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

//When we pass through the values they are known as an argument (As they contain data
printTimetableCustome(number: 5, end: 20)

///Example function
///However value x is a placeholder it doesnt contain any data and are known paramaters
///func exampleFunc(valueX : Int)
///
///However the terms are considered interchanable
///

//Important syntax information
///We must always call the arguments in the same way they are listed when the function is created so for instance:
///printTimetableCustome(end: Int, number: Int)
///Would be invaid and cause an error to appear
///
///
///Any data created inside of a function is automatically destroyed when the function is finished
