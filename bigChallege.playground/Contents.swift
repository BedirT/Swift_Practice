/*
Write a function that determines if a number is divisible by another. It will do the
following:

Accepts two Int parameters
Figures out if the first parameter is divisible by the second
Returns a Bool optional
If the number is divisible it return a true else it returns a nil
Call the function with 2 numbers and then print out whether “Divisible” or “Not Divisible”*/


func division ( div1: Int , div2: Int) -> Bool? {
    if div1%div2 == 0 {
        return true
    }
    return nil
}
var result = division(10, div2: 5)

if result == true {
    print("Divisible")
}else{
    print("Not Divisible")
}














