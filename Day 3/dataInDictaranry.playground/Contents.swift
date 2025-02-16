import Cocoa

//How ton set up a dictanrary
let employee =
[
    "name": "John Wick", //Section one is the identifier (How we can search it when printing and section two is the entry
    "job": "Classified", //Commas are used to seperate our entries
    "location": "Unknown"
]

///We get an error here
//print(employee["name"])
//print(employee["job"])
//print(employee["location"])
///The above code gives us an error as there is no direct value attatched
///this means that it will try and produce what it can but it is saying that it may or may not be empty
///
///How can we fix this?
print(employee["name", default: "Unknown"]) //Here we give a default value to the key whicb avoids the error from the previouse option
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

//Lets try using a diffrent data type
let hasGraduated = [
    "Eric": false,
    "Simon": true,
    "Alaw": false
]

//print(hasGraduated["Eric", default: <#T##Bool#>])
//print(hasGraduated["Simon", default: <#T##Bool#>])
//print(hasGraduated["Alaw", default: <#T##Bool#>])


