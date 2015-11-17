//
//  ViewController.swift
//  funFactsBedir
//
//  Created by Mustafa Bedir Tapkan on 10/11/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainFact: UILabel!
    
    let funFacts = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainFact.text = funFacts.randomNumbers()
        navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func changeFact() {
        mainFact.text = funFacts.randomNumbers()
        view.backgroundColor = colorWheel.randomColors()
    }

}