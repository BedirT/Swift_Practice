//
//  ViewController.swift
//  playlistBrowser
//
//  Created by Mustafa Bedir Tapkan on 10/15/15.
//  Copyright © 2015 Mustafa Bedir Tapkan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDeatail" {
            let songDetailController = segue.destinationViewController as! SongViewController
            songDetailController.segueLabelText = "YAY WORKING ??"
        }
 //   if segue.identifier == "showPlaylistDetail" {
 //   let songDetailController = segue.destinationViewController as! SongViewController
 //   songDetailController.segueLabelText = "YAY ITS WORKING"
 //   }
}

}

