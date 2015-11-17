import UIKit

print("List:\n 1- Apple\n 2- Bananas\n 6- Oranges")

var a = 10
var b = 5

var c = a/b

print("\(c)")

let makeAnArray: [String] = ["Bedir", "Tapkan", "Mustafa"]

print("\(makeAnArray[1])")

var yes : [Int] = [ 1, 2, 3]

yes.count
yes.capacity
yes.append(4)
yes
yes.isEmpty

print(yes)

let statement = true
print(!statement)

var todo = ["Learn Swift", "Build App", "Deploy App"]

todo.append ("Debug App")
todo.append ("Fix Bugs")

let item = todo.removeAtIndex(2)

todo.insert("Learn iOS", atIndex: 1)