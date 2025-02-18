import Cocoa


//Creating an array to run through loop
let platforms = ["ios", "macOS", "tvOS", "watchOS"]


//Creates a new variable for the for loop  called OS also known as a loop variable
//Calls the platform array
//Runs through instance held in the array
for os in platforms {
    print("Swift works great on \(os).")
}

//We can quick hand writting a for loop by writting the following
//for (Variable name)
//This will autogenerate the loop and make us a loop variable based on the array
//we are ittarating through

//Looping over a fix ranged of numbers

//This will loop 12 times
for i in 1...12{
    print("5 x \(i) is \(5 * i)")
}

//Nested for loop
for i in 1...12 {
    //For numbers 1 through 12 we are printing out a new version of the times tables
    print("The \(i) times table :")
    
    //Takes variable J as the times table we are running through and does this for
    //the value of J and timesing it 12 times
    for j in 1...12{
        print(" \(j) x \(i) is \(j * i)")
    }
}

///To summarise we can see a for loop as:
///for x...y
///meaning we are starting at the range of X and then count up untill and including the number Y
///

//We have seen how we can use a for loop to go from x anf up untill y but what if we want
//To not include y or more so up untill y

print()//Blank space

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
    //As we can see when this prints in its final itteration
    //5 is avoided
    //This is useful for itterating through an array at zero
}
