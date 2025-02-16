import Cocoa

//Enum = Enumaration

var selected = "Monday" //Its the first day of the week its monday
selected = "Tuesday" //The next day has begun its tuesday!
selected = "January" //How come its no longer a day?

selected = "Friday " //Oh good we managed to fix the day to be friday and not a month, but now theres a gap so how would this interact with the code?


//Creating an Enum

enum Weekday {
    case monday,tuesday ,wedensday, thursday, friday
}

var day = Weekday.monday
day = .thursday //We can use just a dot here since swift can tell its using the enum value from being defined earlier

