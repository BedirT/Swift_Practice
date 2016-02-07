import UIKit

func greeting(person: String) -> (greeting: String, language : String) {
    let language = "English"
    let greeting = "Hello \(person)"
    
    return (greeting,language)
}

var result = greeting("Tom")

print("\(result.0)")

