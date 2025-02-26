import Cocoa

///There are a few ways we could send back multiple values
///First we'll go over the messy way and then see the proper way to do this


//Returning multiple strings using an array

//First we create the method and then specify what the return value will be in this case we are specifying a string array
//Now in some cases returning an array is useful but in a situation like this it can be messy or difficult to read
func getUser() -> [String] {
    ["Taylor", "Swift"]
}


let user = getUser() //From here we call the method
print("Name: \(user[0]) \(user[1])") //In this statment we are printing the userName by selecting the instances from each index within the array
//This is problamtic it can be difficult to rember what each instance could be, and could be complety diffrent or not even exist

//We could also use a dictionary however this has its own issues, lets take a look at this
func getUser2() -> [String: String] {
    [
    "firstName": "Taylor", //We are creating the first and last name and providing it with a value to hold within the dictanorie
    "lastName": "Swift"
    ]
}

//Now we can print this out, but this can still be messy
let user2 = getUser2()
print("Name: \(user2["firstName", default: "Annonymous"]) \(user2["lastName", default: "Annonymous"])") //In this example we know the values will exist
//However we still need to provide a default value in case the held values arent what we expected

//Now lets try the proper swift solution to this issue, using what is called a tuple

//Lets break down how this function is structured

//Here we are stating we want to return two strings each with their own variable name, we call this a tuple
func getUser3() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift") //Since swift can see this is one line it can tell that these two strings will be return values, it will apply them into the variables in the same order
    
    //We could also do it like this
    //In the statement bellow we are specifying what string will go into which variable, this can be nicer especially when returning multiple values as it is easier to see where each is held
    //(firstName: "Taylor", lastName: "Swift")
}

//Now lets see how we'd print this out
let user3 = getUser3()//First we call the function
print("Name: \(user3.firstName) \(user3.lastName)") //Here we specify the variable that is holding the return from the function and then specify which part of the return we want to call

//This may seem similiar to a dictionary within swift, however it does have some diffrences
//lets break this down a bit

///When you acsess a value within a dicitionary swift can't tell if there is going to a value present, because of this we need to provide a default value
///When we get a value from tuple, swift will know it is availiable as the tuple of capable of telling swift it is
///when we acsess a value from a tuple, we use a function like name, meaning its not a string and is easier to avoid typos with
///A dictionary may hold multiple values alongside our "firstName" but our tuple won't
///
///To summarise tuples have they key advantage of being specific about what value will exist
///


//Useful features within tuples

//We've already seen one useful feature and thats that we don't have to specify what value we are applying to our return values, as swift can do this for us

//It is also possibe to not provide the tuple with the name to the return elements and we can call the return values using numerics instead:

//Here we are telling swift we want to return two strings without specifying the value names
func UserName() -> (String, String) {
    ("Taylor", "Swift")
}

let user4 = UserName() //Here we call the function and store it
//Here you can see we are calling the values from the tuple, much like an array each held value will start at zero
print("Name: \(user4.0) \(user4.1)")

//We could also store each element within a tuple in seperate values, by doing the following

//We'll use the function from earlier for this example
//We call the stored function from user3 and specify the value from the tuple we want to store for each of these values
let firstName = user3.firstName
let lastName = user3.lastName

//Now since we have stored these elements from the touple in variables we could call them in this print statment
print("Name: \(firstName) \(lastName)") //Instead we are using the stored values we created instead of calling for the function

//There is an easier and quicker way to do this lets call user3 again (I know its a lot of users with the same name)
let(firstName1, lastName1) = getUser3() //Much like when we do a single line returen and dont specify swift can also figure out that we want to place those values in the same ordered specified within the function return
print("Name: \(firstName1) \(lastName1)")

//If we wanted to do the shorthand but we dont want to store all of the return we can instead specify to ignore part of the tuple
let(firstName2, _) = getUser3() //Here we are telling swift to ignore the last name as we are using the underscore in its place 





