var problem = "split this string into words and print them on separate lines"

for i in problem.characters {
    if i != " " {
        print(i, terminator: "")
    }
    else{
        print("")
    }
    
}