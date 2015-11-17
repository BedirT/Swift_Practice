import UIKit

var array : [String] = ["I","Really","Tried","For","THIS"]

var i = 0

while i < array.count {
    print(array[i])
    i++
}

i = 0

repeat {
    print(array[i])
    i++
}while i < array.count