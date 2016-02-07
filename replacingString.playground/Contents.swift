var aString = "Replace the letter e with *"
var reversed : Array<Character> = aString.characters.reverse()
var replacing : Array<Character> = reversed.reverse()
var replacedString : String = ""
for var i = 0 ; i < aString.characters.count ; i++ {
    
    if replacing[i] == "e" {
        replacing[i] = "*"
    }
    
    replacedString.append(replacing[i])
}