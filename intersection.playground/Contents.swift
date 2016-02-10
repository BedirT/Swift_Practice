/*
    Print all the elements from otherNumbers that appear in listOfNumbers. Don't print anything if listOfNumbers and otherNumbers have no common elements.
*/


var listOfNumbers = [1, 2, 3, 10, 100]
var otherNumbers = [5, 2, 3, 10, 13]
var common : Array<Int> = []
for var i = 0 ; i < listOfNumbers.count ; i++ {
    for var j = 0 ; j < otherNumbers.count ; j++ {
        if listOfNumbers[i] == otherNumbers[j] {
            common.append(listOfNumbers[i])
            otherNumbers.removeAtIndex(j)
            break
        }
    }
}
for var i = 0 ; i < common.count ; i++ {
    print(common[i])
}
