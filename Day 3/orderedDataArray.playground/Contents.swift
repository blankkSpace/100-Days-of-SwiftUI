import Cocoa

//Array
var beatles = ["John", "Paul", "George"]
let numbers = [1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9]

//How to view an element within an array
print(beatles[1]) //Array name followed by the item position within the array

//How to add to a mutatable array
beatles.append("Rigby")
print(beatles)


//Creating a new empty array
var score = Array<Int>() // variable Naem = Array<Data type>

//There is a quicker way to write arrays in swift by doing the following
var album = [String]() //This works the same as the other code but is designed to be a more short hand way

//Lets add some itmes to our new album array to test some more functions
album.append("Fearless")
album.append("Red")
album.append("Forest")

print(album.count)//This shows us how many items are within the array

//Next we can remove items within an array there is two ways to do this
album.remove(at: 2) //This will remove the item at index 2 "Forest"
print(album)

//We could remove all the elemenrs within the array by doing the following
//album.removeAll()

//Next we can check if an array contains a certain elements
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen")) //Will retuen false
print(bondMovies.contains("Spectre")) //Will retuen true


//Next we can sort how arrays are ordered

var presidents = ["Bush", "Obama", "Trump", "Biden"]
print(presidents.sorted())//Sorts alphabetically
print(presidents.reversed())//Retruns it to the orginal version via having a temp saved copy


