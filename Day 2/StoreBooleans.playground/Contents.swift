import Cocoa

///Day two, Storing truth with booleans
///

let goodDogs = true
let goodGame = false

//Booleans dont have to be directly declared they can be the result of an action or function
let isMultiple = 120.isMultiple(of: 3)

//Boolean operation
// ! means the oppisite or is not ( !true = is not true)
var isAuthentic = false
isAuthentic = !isAuthentic
print(isAuthentic)
isAuthentic = !isAuthentic
print(isAuthentic)

///Toggle operator
///Works the same as !  but may be more obiouse in large or complex code
///

var gameOver = false
print(gameOver)

gameOver.toggle() //Toggle like a light switch on to off, true to false
print(gameOver)
