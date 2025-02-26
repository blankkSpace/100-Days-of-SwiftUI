import Cocoa

///Continue and break
///continue = skips the current itteration of the loop
///break = skips/leaves all itterations of the loop


//Using contiue

let filename = ["me.jpg", "work.txt","sophie.jpg", "logo.psd"]

for filename in filename {
    //Checks the end of an entry for ".jpg"
    if filename.hasSuffix(".jpg") == false {
        continue //If suffix check is false skip the itteration
    }
    
    print("Found picture: \(filename)") //Prints only when true is returned
}

//Using break

let number1 = 4
let number2 = 14

var multiples = [Int]() //Creats empty array of ints

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i) //Adds the result is true in both counts it is added to the array
        
        if multiples.count == 10 {
            break //When multiples has 10 elements  leave the loop
        }
    }
}

print(multiples)
