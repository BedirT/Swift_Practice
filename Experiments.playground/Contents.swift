// Experiments in AppleSwift

import UIKit

// Average Calculater

func avearge (num1 : Double, num2 : Double) -> Double {
    return (num1+num2)/2
}

avearge(30, num2: 20)
avearge(30, num2: 30)

var a = 0
var sum = 0


// MAX MIN CALCULATER

func calculateStatistic(scores: [Int] ) ->(min:Int, max:Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score>max {
            max = score
        }else if score<min {
            min = score
        }
        sum += score
    }
    return (min,max,sum)
}

let statistic = calculateStatistic([15,2,3,15,43,23,57,899])
print(statistic.max)
statistic.2

// SUM OF SOME NUMBERS

func sumOfNumbers(numbers: [Int]) -> (Int){
    var sum2 = 0
    for number in numbers {
        sum2 += number
    }
    return sum2
}


let sums = sumOfNumbers([3,5,9,13,22,11,299])
print(sums)

// FUNC - RETURN - ANOTHER FUNC

func makeIncrementer () -> (Int -> Int) {
    func addOne (number: Int) -> Int {
        return 1+number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

// ARGUMENT AS FUNC

func hasAnyMatches (list:[Int],condition:Int -> Bool) -> Bool {
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number<10
}
var numbers=[20,18,8,6]
hasAnyMatches(numbers, condition: lessThanTen)

// CLOSURES

numbers.map({
    (number: Int) -> Int in
    if number%2 == 0 {
        let result = 3*number
        return result
    }else {
        return 0
    }
})

let mappedNumbers = numbers.map({number in 3*number})
print(mappedNumbers)

let sortedNumbers = numbers.sort{$0>$1}
print(sortedNumbers)

// OBJECTS AND CLASSSES 


















