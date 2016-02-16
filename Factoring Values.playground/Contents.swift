//You are given a number. Decompose number into prime factor and write it as an expression(see examples).

var number = 7
var array : Array<Int> = []
var count = number
for var i = 2 ; i <= count ; i++ {
    
    if number == i {
        array.append(i)
        break
    }
    
    if number%i == 0 {
        number/=i
        array.append(i)
        i--
    }
    
    
}

print(count, terminator: "")
print(" = ", terminator: "")
for var i = 0 ; i < array.count ; i++ {
    print(array[i], terminator: "")
    if i != array.count-1
    {print(" * ", terminator: "")}
}