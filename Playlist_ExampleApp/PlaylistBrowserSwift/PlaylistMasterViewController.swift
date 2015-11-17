//
//  ViewController.swift
//  PlaylistBrowserSwift
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    var playlistArray : [UIImageView] = []
    @IBOutlet weak var playlistImageView0: UIImageView!
    @IBOutlet weak var playlistImageView1: UIImageView!
    @IBOutlet weak var playlistImageView2: UIImageView!
    @IBOutlet weak var playlistImageView3: UIImageView!
    @IBOutlet weak var playlistImageView4: UIImageView!
    @IBOutlet weak var playlistImageView5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playlistArray += [
            playlistImageView0,
            playlistImageView1,
            playlistImageView2,
            playlistImageView3,
            playlistImageView4,
            playlistImageView5 ]
        
        for index in 0..<playlistArray.count {
            let playlist = Playlist(index: index)
            let playlistImageView = playlistArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.background
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDeatilSegue" {
            
            let playlistImageView = sender!.view as! UIImageView
            
            if let index = playlistArray.indexOf(playlistImageView) {
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(index: index)
            }
        }
    }
    
    @IBAction func showPlaylistDetail(sender: AnyObject) {
    
        performSegueWithIdentifier("showPlaylistDeatilSegue", sender: sender )
    
    }
}

