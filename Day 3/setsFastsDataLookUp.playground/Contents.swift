import Cocoa

//Creating a ser
let people = Set(["Jack","Daniel","Aether","Ewan","Simon", "Simon"])
print(people) //Print this a few times and you'll see how it prints out randomly each time
//You'll also notice that when we print this it will remove the duplicate simon

//When addinf an item to a set we do it slighlty diffrently
var food = Set<String>()
food.insert("Curry")
food.insert("Bolegnase") //We use inster instead of append as its not being placed anywhere specifically

//Theses sets have a few uniquie cases where they are useful
///Number one: we dont want any repating entries in our collection
///For instance say
