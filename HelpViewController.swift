//
//  HelpViewController.swift
//  Flash Card
//
//  Created by Student on 05/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class HelpViewController: UIViewController {

    
    @IBOutlet weak var but: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        but.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBAction func vid(_ sender: Any) {
        let path = Bundle.main.path(forResource: "tvideo", ofType: "mp4")
        let myurl = URL(fileURLWithPath: path!)
        
        let vplayer = AVPlayer(url: myurl)
        
        let video = AVPlayerViewController()
        
        video.player = vplayer
        present(video, animated: true, completion: nil)
        video.player?.play()
    }
    
}
