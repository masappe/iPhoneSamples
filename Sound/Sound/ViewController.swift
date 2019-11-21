//
//  ViewController.swift
//  Sound
//
//  Created by Masato Hayakawa on 2019/11/13.
//  Copyright © 2019 masappe. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapBeginButton() {
        let path = Bundle.main.path(forResource: "guitar", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.play()
        
        button.setImage(UIImage(named: "musician_cat.png"), for: .normal)
        print("tap begin")
    }
    
    @IBAction func tapEndButton() {
        button.setImage(UIImage(named: "guitar.png"), for: .normal)
        print("tap end")
    }

    
}

