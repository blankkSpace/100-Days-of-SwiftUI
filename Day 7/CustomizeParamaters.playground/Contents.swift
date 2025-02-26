import Cocoa


//Function paramater names are incredibley useful as they allow us to come back to our code and easily understand what our code is doing,
//lets have a look at a good example

func rollDice (numberOfSides: Int, count: Int) -> [Int] {
    var rolls = [Int]() //Create an empty array
    
    //roll as many dice as needed using the count paramater
    for i in 1...count {
        let roll = Int.random(in: 1...numberOfSides) //Rolls a dice based on the numberOfSide paramater
        rolls.append(roll) //Adds to the rolls array
    }
    
    return rolls
}

let roll = rollDice(numberOfSides: 6, count: 5)

//Looking at the above method six months from now we could easily tell what the method is doing as well as what each paramater is doing


//Sometimes paramater names can be less helpful lets have a look at some examples

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see")) //Using this we can see we dont have to specify string: or prefix:

//Swift allowsa for hasPrefix to use _ to ignore the external lable

//we can use the same technique in our function calls depending on what reads better
//For this example we will be using two diffrent versions of the same function, lets create the first one we'll be more familiar with the way this one looks

func isUppercase(string: String) -> Bool {
    string == string.uppercased() //We use this to compare if our string is the same as the upper case version
    //Swift will then automatically return true or false based on the result
}

let string = "HELLO WORLD"
let result = isUppercase(string: string) //We pass our string varaibale into the function
//As we can see when we call the function we are first specifying the varaible type that we are passing through, but seeing string: string can be rather annoying to look at

print(result) //This will either print true or false

//How about we remove the need to include the string: string during the function call

//We are now using an under score, this tells swift to ignore the paramater name we need to pass through, meaning when we call the function all we have to do is pass the variable in
func isUppercase2(_ string: String) -> Bool {
    string == string.uppercased()
}

let string2 = "HELLO WORLD"
let result2 = isUppercase2(string2) //Here we now only have to type in the variable instead of also including the paramater name

print(result2) 

