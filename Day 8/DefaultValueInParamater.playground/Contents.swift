import Cocoa

//In this we will be looking at providing default values into our function paramaters, this is useful for when we may want a function to behave similiaryly during each call

//Lets have a look at a previouse example and how we can change this

//Whenever we call this function we have to specify the amount of times we want it to times by, but what if we wanted it to normally do it a specific amount without having to say at every call
func printTimesTables(for number: Int, end: Int){
    for i in 1...end{
        print("\(i) x \(number) = \(i * number)")
    }
}

printTimesTables(for: 5 , end: 20)

//Now lets see how we can provide the same function with a default value so we don't always have to provide the end for the loop

//Here we have provided the end paramater with a value, so when we call this function we don't have to provide the end if we dont want to
func printTimesTables2(for number: Int, end: Int = 12){
    for i in 1...end{
        print("\(i) x \(number) = \(i * number)")
    }
}
printTimesTables2(for: 5) //Here we are just passing the number we want to times
printTimesTables2(for: 5, end : 20) //If we wanted we could change the value to instead end at a diffrent point

//Default paramaters are used more often then you think, we can see them in action using an array
var characters = ["Lana", "Pam", "Ray", "Sterling"] //When this is created swift provides it with enough memory to hold its items plus a bit more so it can easily grow
print(characters.count)
characters.removeAll() //When we then remove all the items within the array this memory is then freed up and the capicity it had removed
print(characters.count)

//However there may be a point where we want to remove all the items within the array but pass in a bunch of new values, so we wouldnt want to free up that memory for perfromance

var characters2 = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true) //Here we specify to swift we want to keep hold of the memory allocated so the array keeps it orignal meomory size
print(characters.count)

//Now that we know about default paramaters we need to decide when to use them, heres a good example to help

//Lets say this function is used for a map, normally most users want the fastest and most efficent route we can provide, so we'd set this as the default
func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}

//This provides us a few ways to call this function depending on how the user may want to travel
findDirections(from: "London", to: "Glasgow") //Here the user simply enters their location and the destinatin, here the default values are still in use
findDirections(from: "London", to: "Glasgow", route: "scenic") //Here the user may decide they want a more scenic route this changes the default value
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)//Here again the user is going through the scenic route but also wants to avoid highways, maybe for a longer drive or they dont feeel comfortable driving just yet
