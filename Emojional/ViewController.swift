//
//  ViewController.swift
//  Emojional
//
//  Created by ERIC SMITH on 4/26/20.
//  Copyright © 2020 ERIC SMITH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["😄" : "Happy", "😍" : "Romantic"]
    
    let customMessages = ["Happy" : ["You're feeling great!", "Love the vibes", "You go girl!"], "Romantic" : ["Feelin the love", "Kisses", "Yay!"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "prickly-pear.png")!)
        }
    

    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = (sender.titleLabel?.text)!
        let options = customMessages[emojis[selectedEmotion]!]!
        
        let rand = Int.random(in: 0..<options.count)
        let emojiMessage = options[rand]
    
        let alertController = UIAlertController(title: emojis[selectedEmotion]!, message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        // in as much detail as possible
    
    
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
    
    }
}

