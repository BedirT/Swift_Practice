//
//  PlaylistDetailViewController.swift
//  PlaylistBrowserSwift
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    var playlist: Playlist?
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!

    @IBOutlet weak var playlistArtistNum0: UILabel!
    @IBOutlet weak var playlistArtistNum1: UILabel!
    @IBOutlet weak var playlistArtistNum2: UILabel!
    @IBOutlet weak var playlistArtistNum3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if playlist != nil {
            
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.background
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
            
            playlistArtistNum0.text = playlist!.artists[0]
            playlistArtistNum1.text = playlist!.artists[1]
            playlistArtistNum2.text = playlist!.artists[2]
            playlistArtistNum3.text = playlist!.artists[3]
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
