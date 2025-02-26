import Cocoa

///Dealing with errors in swift takes three steps
///1) Telling swift about the possible errros that could happen
///2) Writing a function that can flag up the errors
///3) Calling the function and handeling the errors
///
///Lets have a loop at a situation like this

//First lets define a possible error
enum PasswordError: Error {
    case short, obvious
}

//Using our PasswordError enum we specify the diffrent types of errors possible with passwords, however this doesnt define what these errors are
//next we'll create a function that uses these enums that allow us to specify when these errors should occure

//Here we use the keyword throw, this tells swift that this function MIGHT return an error, if the throw occures the function is immeditantly exited and wont return a string
//If no throws occure then the function must return a string
func checkPassword(_ password: String) throws -> String {
    //If the password is less then 5 characters we throw the enum error short
    if password.count < 5 {
        throw PasswordError.short
    }
    
    //Here we throw the obiviouse error
    if password == "password" {
        throw PasswordError.obvious
    }
    
    //Here if the password is 5 or more characters but less then 8 (This happens based on how our if statment is structered) we tell the user the password is ok
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Strong" //When the password is more then 8 but less then 10 we get a strong return
    }else {
        //Finally if the password is more then 10 we return excellent
        return "Excellent"
    }
    
}

//Lets move onto step three by using a do catch

let password = "1234" //First we specify the password

//Here we first try Do
do {
    //We call our checkPassword method and pass in our password string
    //The try keyword is important here, it acts as a visual sign to other developers to know code execution may be interupted
    let result = try checkPassword(password)
    
    //If no throw occures we return our rating and print it, the do catch is then exited
    print("Password rating: \(result)")
} catch {
    //Our catch block must be capable of catching any error that may occure during this process
    //If a catch occures we move into the catch section of the block and print the error
    print("Error: \(error)")
}

//We could rewrite our try catch to have seperate sections for each error

do {
    let result = try checkPassword(password)
    print("Password rating: \(result)")
} catch PasswordError.short {
    //Using this allows us to provide specific error messages for each type of error that can occure during the checkPassword process 
    print("Password is too short")
} catch PasswordError.obvious {
    print("Password is too obvious")
} catch {
    print("Something else went wrong")
}

