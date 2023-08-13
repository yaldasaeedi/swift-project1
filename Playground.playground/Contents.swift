//simple project1 for day1
import Foundation
let name = "yalda"
let age = 20
let hight = 158.50
let student = true
let number: UInt64 = 9335575294
let formattedNumber = String(format: "%011llu", number) //chon kheili adade bozorgie intori minevisan

print ("hello \(name) your age is \(age) your hight is \(hight) and your number is \(formattedNumber)")
if student{
    print("you are student")
}else{
    print("you are not student")
}
let sName : String
sName = "Unknown"
var iAge : Int 
iAge = 55
iAge = 54
let dHight : Double
dHight = 184.7234
let bStudent : Bool = false
let iNumber: UInt64 = 9234534869
let iFormattedNumber = String(format: "%011llu", iNumber) 
print ("hello \(sName) your age is \(iAge) your hight is \(dHight) and your number is \(iFormattedNumber)")
if bStudent{
    print("you are student")
}else{
    print("you are not student")
}