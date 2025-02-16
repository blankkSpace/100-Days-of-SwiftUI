import Cocoa

//Ternery operators can be seen as the following
// The what (Condition) and then an option of true or false

let age = 18

//First we start by creating the variable and then it will follow this format:

//Age is the condtion or checked variable, The first option YES is the true option and the second optiono NO is the false option
let canVote = age >= 18 ? "Yes" : "No"


let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")


let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)


enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)


///This piece of code could be wrote out in a nested if an else statment but thats not very effective
//let hour = 23
//print(hour < 12 ? "It's before noon" : "It's after noon")
///For now it may not be incredibly apparant as to why we want to use this operator but as we explore swiftUI it will make more sense
