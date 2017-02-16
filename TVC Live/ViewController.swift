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
        let international_urls : [URL] = [
            URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:tv3_web/playlist.m3u8")!,
            URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:324_web/playlist.m3u8")!,
            URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:c33_web/playlist.m3u8")!
        ]
        
//        let international_urls : [String:URL] = [
//            "3/24": URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:324_web/playlist.m3u8")!,
//            "TV3": URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:tv3_web/playlist.m3u8")!,
//            "33": URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:c33_web/playlist.m3u8")!
//        ]
        
//        let spanish_urls : [String:URL] = [
//            "3/24": URL(string: "http://ccma-tva-int-abertis-live.hls.adaptive.level3.net/int/ngrp:324_web/playlist.m3u8")!,
//            "TV3": URL(string: "http://ccma-tva-es-abertis-live.hls.adaptive.level3.net/es/ngrp:tv3_web/playlist.m3u8")!,
//            "33": URL(string: "http://ccma-tva-es-abertis-live.hls.adaptive.level3.net/es/ngrp:c33_web/playlist.m3u8")!,
//            "Esport3": URL(string: "http://ccma-tva-es-abertis-live.hls.adaptive.level3.net/es/ngrp:es3_web/playlist.m3u8")!
//        ]

        let title = sender.tag
        
//        guard let url = international_urls[title] else {
//            return
//        }
        
        let url = international_urls[title]

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

