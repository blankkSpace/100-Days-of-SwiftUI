import Cocoa



//The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//
//You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
//If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//If you can’t find the square root, throw a “no root” error.

//Enum created for error handeling
enum sqrError: Error{
    case outOfBonds, noRoot
}


func sqrRoute(_ x: Int) throws ->  Int {
    
    //Checks if x is less then one 1 or more than 10,000
    if x < 1 || x > 10000{
        throw sqrError.outOfBonds
    }
    
    for i in 1...100{
        if i * i == x {
            return i
        }
    }
    
    //If the sqr root cant be found during the for loop this error is thrown
    throw sqrError.noRoot
}


let num = 4376 //We specify the number we wish to check here

//We then create a do catch
do {
    //We first try the function
    let result = try sqrRoute(num)
    print("The square root of \(num) is \(result)")
}catch sqrError.outOfBonds{
    //If num is less then 1 or more than 10,000 then the out of bounds error will occure
    print("\(num) is out of bounds")
}catch sqrError.noRoot {
    //If the sqrRoot cant be found this error will occure, in this case this is the error we will get
    print("This number can't be routed")
}catch {
    //This is used if an error we didnt plan for occures, in this situation it shouldnt play
    print("An error occured")
}
