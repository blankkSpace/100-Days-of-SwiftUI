import Cocoa

//Creating fizz buzz

for i in 1...100{
    //Checks if i is a multiple of 3 and 5 and prints fizz buzz
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    }
    //Checks for multiples of 5 if the previouse condition fails
    else if i.isMultiple(of: 5) {
        print("Buzz")
    }
    //Checks if previouse condition fails and if i is a multiple of 3
    else if i.isMultiple(of: 3) {
        print("Fizz")
    }else{
        //If none of the 3 conditions are true prints out i
        print(i)
    }
    
}
