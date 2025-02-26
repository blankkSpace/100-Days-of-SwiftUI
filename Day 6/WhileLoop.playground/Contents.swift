import Cocoa

//Basic while loop

var countdown = 10

//While countdown is MORE then zero
//Also seen as when countdown is == 0
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1 //For every itteration remove one from countdown
    //The loop will not display zero as the condition is checked
    //before the loop starts
}

print("Blast off!") //Prints once loop is exited

//Using random
//Chose any number from 1 to 1000
let id = Int.random(in: 1...1000)

//Rolling a 20 sided dice (Its time to kill some dragons!)

var roll = 0

//The loop will continue as long as roll does not equal 0
while roll != 20 {
    //Generating a random number from 1 to 20
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")
