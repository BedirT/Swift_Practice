//: Playground - noun: a place where people can play

var birth = 100

var gen =   birth == 1000 ? "OLEEEY" :
            birth == 20 ? "SECOND" :
            birth == 200 ? "THIRD" :
            birth == 2000 ? "OKKK" :
            "NONE"

// PERFECT WAY TO USE

let defaultSize = "M"

var selected: String?

let order = selected ?? defaultSize

selected  = "1"

let amc = selected ?? defaultSize
