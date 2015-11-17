// Tuple

import UIKit

func name (name name : String) -> (Bool, String){
    
    let group = ["Bedir","Enes","Meder","Yolal","Musa","Behic"]
    
    var found = (false, "\(name) is one of my brothers. ")
    
    for n in group {
        if n == name {
            found = ( true, "\(name) is one of my brothers. ")
        }
    }
    
    return found
    
}

var result = name(name: "Bedir")

result.0
result.1