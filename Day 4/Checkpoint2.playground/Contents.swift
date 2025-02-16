import Cocoa

//Please compelte the following challange

//This time the challenge is to create an array of strings,
//then write some code that prints the number of items in the array
//and also the number of unique items in the array.

//Step one: Make the array

var colour = ["Red", "Blue", "Green", "Green"]

print(colour.count)

var newSet = Set(colour)

print(newSet)
print(newSet.count)
print(Set(colour).count)
