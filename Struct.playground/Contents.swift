struct Expense {
    var description: String
    var amount: Double = 0.0
    
    init(des: String, amo: Double){
        self.description = des
        self.amount = amo
    }
    
}