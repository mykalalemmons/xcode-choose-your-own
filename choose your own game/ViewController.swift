//
//  ViewController.swift
//  choose your own game
//
//  Created by Mykala Lemmons on 2/19/19.
//  Copyright © 2019 Mykala Lemmons. All rights reserved.
//

import UIKit
import AVFoundation
import SafariServices

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sound = Bundle.main.path(forResource: "blop", ofType: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch {
            print("error")
    }
        
    }
    

    @IBAction func startButtonPressed(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func ratebuttonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Like our game?", message: "Give us a rating!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "5 Stars", style: UIAlertAction.Style.default, handler: nil))
         alert.addAction(UIAlertAction(title: "4 Stars", style: UIAlertAction.Style.default, handler: nil))
         alert.addAction(UIAlertAction(title: "3 Stars", style: UIAlertAction.Style.default, handler: nil))
         alert.addAction(UIAlertAction(title: "2 Stars", style: UIAlertAction.Style.default, handler: nil))
         alert.addAction(UIAlertAction(title: "1 Star", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: nil)
}

    
    @IBAction func createButtonPressed(_ sender: Any) {
        var urlIntermediary =  "http://www.scholastic.com/teachers/story-starters/"
        let myurl = URL(string: urlIntermediary)
       let urlPresent =  SFSafariViewController(url: myurl!)
        present(urlPresent, animated: true)
    }
    
}


class pageOne: UIViewController {
    
}
