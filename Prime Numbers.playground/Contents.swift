/*
* Prime numbers

You are given a number. Print "prime" if the number is a prime and "not prime" otherwise.
A number is a prime if it has exactly 2 distinct divisors (1 and itself).
*/

var number = 44

// your code here
var i : Int

for i = 2 ; i < number ; i++ {
    
    if number % i == 0 {
        print("not prime",terminator: "")
        break
    }
    
}
if i == number {
    print("prime",terminator: "")
}
