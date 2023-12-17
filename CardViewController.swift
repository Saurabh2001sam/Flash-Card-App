//
//  CardViewController.swift
//  Flash Card
//
//  Created by Student on 04/11/23.
//  Copyright © 2023 Student. All rights reserved.
//
import Foundation
import UIKit
import AVKit
import AVFoundation

class CardViewController: UIViewController {
    var basket : [String:String] = ["C":"D"]
    var qn = 0
    
    var vlc : AVAudioPlayer!
    
    @IBOutlet weak var tet: UILabel!
    
    @IBOutlet weak var card: UILabel!
    
    @IBOutlet weak var cfont: UISlider!
    
    @IBOutlet weak var sw: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let qs = Array(basket.keys)
        tet.text = "Question"
        card.text = qs[qn]
        cfont.maximumValue = Float(qs.count - 1)
        tet.textColor = UIColor.blue
    }
    
    
    @IBAction func flip(_ sender: Any) {
        if sw.isOn{
            let qs = Array(basket.keys)
            tet.text = "Question"
            card.text = qs[qn]
            tet.textColor = UIColor.blue
        }else{
            let qs = Array(basket.keys)
            tet.text = "Answer"
            card.text = basket[qs[qn]]
            tet.textColor = UIColor.green
        }
//        do{
//            if let song_url = Bundle.main.path(forResource: "flipcard", ofType: "mp3")
//            {
//                vlc = try AVAudioPlayer(contentsOf: URL(string: song_url)!)
//            vlc.play()
//
//            }
//        }
//        catch{ print ("Sorry no Music")}
        
        if let songURL = Bundle.main.url(forResource: "flipcard", withExtension: "mp3") {
            do {
                vlc = try AVAudioPlayer(contentsOf: songURL)
                vlc.play()
            } catch {
                // Handle the error (e.g., print an error message or log it)
            }
        } else {
            // Handle the case where the audio file is not found
            print("The audio file 'flipcard.mp3' was not found in the app bundle.")
        }

    }
    
    
    @IBAction func cfont(_ sender: Any) {
        qn = Int(cfont.value)
        if sw.isOn{
            let qs = Array(basket.keys)
            tet.text = "Question"
            card.text = qs[qn]
            tet.textColor = UIColor.blue
        }else{
            let qs = Array(basket.keys)
            tet.text = "Answer"
            card.text = basket[qs[qn]]
            tet.textColor = UIColor.green
        }
    }
    
    
    @IBAction func Help(_ sender: Any) {
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
