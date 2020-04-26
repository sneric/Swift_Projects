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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "prickly-pear.png")!)
        }
    

    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text
    
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: "Message", preferredStyle: UIAlertController.Style.alert)
        
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        // in as much detail as possible
    
    
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
    
    }
}

