var a = 24
var b = 18

var maxDiv = min(a, b)
var maxVal = max(a, b)

var result : Int
var i : Int
var GCD : Array<Int> = []
for i=maxDiv ; i>0 ; i-- {
    
    if maxVal % i == 0 {
        if min(a, b) % i == 0 {
            GCD.append(i)
        }
    }
    
}

print(GCD.maxElement()!, terminator: "")