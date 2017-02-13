//
//  ViewController.swift
//  TVC Live
//
//  Created by Gerard Gine on 2/12/17.
//  Copyright © 2017 Kreative Offensive. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func playVideo(_ sender: UIButton) {
        guard let title = sender.currentTitle else {
            return
        }
        let urls : [String:URL] = [
            "3/24": URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:324_web/playlist.m3u8")!,
            "TV3": URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:tv3_web/playlist.m3u8")!,
            "33": URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:c33_web/playlist.m3u8")!
        ]
        guard let url = urls[title] else {
            return
        }
//        guard let url = URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:324_web/playlist.m3u8") else {
//            return
//        }
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)
        
        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player
        
        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

