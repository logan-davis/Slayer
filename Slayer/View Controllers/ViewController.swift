//
//  ViewController.swift
//  Slayer
//
//  Created by Logan Davis on 8/28/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import NotificationCenter

class ViewController: UIViewController {
    
    @IBOutlet weak var videoPreviewLayer: UIView!
    var player: AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.isStatusBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: avpController.player?.currentItem)
        let moviePath = Bundle.main.path(forResource: "loadinganim", ofType: "mp4")
        if let path = moviePath {
            let url = NSURL.fileURL(withPath: path)
            player = AVPlayer(url: url)
            avpController = AVPlayerViewController()
            avpController.player = self.player
            avpController.view.frame = videoPreviewLayer.frame
            avpController.videoGravity = AVLayerVideoGravityResizeAspectFill
            avpController.showsPlaybackControls = false
            avpController.view.isUserInteractionEnabled = false
            avpController.view.clipsToBounds = false
            addChildViewController(avpController)
            view.addSubview(avpController.view)
            self.player.play()
        }
    }
    
    func playerDidFinishPlaying() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        UIView.animate(withDuration: 0, delay: 5, options: .curveEaseIn, animations:   {
        }) { (_) in
            print("done")
            self.avpController.present(vc, animated: false, completion: nil)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.isStatusBarHidden = false
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

