//
//  ViewController.swift
//  sillySong
//
//  Created by Mustafa Tapkan on 1/4/17.
//  Copyright © 2017 Mustafa Tapkan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
    @IBAction func reset(_ sender: Any) {
        lyricsView.text = ""
        nameField.text = ""
    }
    @IBAction func lyricCreate(_ sender: Any) {
        lyricsView.text = customizeTemplate(nameField.text!, template: bananaFanaTemplate)
    }
    
    
    
    let bananaFanaTemplate = [
        "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
        "Banana Fana Fo F<SHORT_NAME>",
        "Me My Mo M<SHORT_NAME>",
        "<FULL_NAME>"].joined(separator: "\n")
    
    func customizeTemplate(_ name : String, template : String) -> String{
        let shortName = shortNameFromName(name)
        return (template.replacingOccurrences(of: "<FULL_NAME>", with: name)).replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    }
    func shortNameFromName(_ name: String) -> String{
        return (name as NSString).substring(from: 1)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

