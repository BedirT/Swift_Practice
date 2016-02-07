let aString = "anutforajaroftuna"

var reversed : Array<Character> = aString.characters.reverse()
var second : Array<Character> = reversed.reverse()
var result = 0
for var i = 0 ; i < aString.characters.count ; i++ {
    if reversed[i] == second[i] {
        
    }else{
        result += 1
    }
}
if result == 0 {
    print("true")
}
else{
    print("false")
}
