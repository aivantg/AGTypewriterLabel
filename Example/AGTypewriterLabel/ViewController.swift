//
//  ViewController.swift
//  AGTypewriterLabel
//
//  Created by aivantgoyal on 01/09/2018.
//  Copyright (c) 2018 aivantgoyal. All rights reserved.
//

import UIKit
import AGTypewriterLabel

class ViewController: UIViewController, AGTypewriterLabelDelegate {

    @IBOutlet weak var typewriterLabel: AGTypewriterLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegate for your Label
        typewriterLabel.delegate = self
        
        // Setup TypewriterLabel Animations
        // Two options exist: text or a pause
        
        // Interval determines the time between each letter being typed
        typewriterLabel.addAnimation(AGTypewriterAnimation.text(string: "Hello", interval: 0.1))
        
        // Length determines how many seconds the label will pause for
        typewriterLabel.addAnimation(AGTypewriterAnimation.pause(length: 2.0))
        
        typewriterLabel.addAnimation(.text(string: ", World!", interval: 0.03))
        typewriterLabel.addAnimation(.pause(length: 1.0))
        
        // You can also add multiple animations at a time, allowing you to store the array of animations elsewhere
        typewriterLabel.addAnimations([.text(string: " With AGTypewriterLabel,", interval: 0.08),
                                       .text(string: " You can make text go slow...", interval: 0.2),
                                       .text(string: " Or you can make it go really fast!", interval: 0.03),
                                       .pause(length: 1.0),
                                       .text(string: " You can also have nice, dramatic pauses. Count to 3!", interval: 0.08),
                                       .pause(length: 1.0),
                                       .text(string: " 1...", interval: 0),
                                       .pause(length: 1.0),
                                       .text(string: "2...", interval: 0),
                                       .pause(length: 1.0),
                                       .text(string: "3!", interval: 0),
                                       .pause(length: 2.0),
                                       .text(string: " I can't wait to see what you come up with. Have fun!", interval: 0.06)
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Be sure to start the animations!
        
        typewriterLabel.startAnimation()
    }
    
    func didFinishAnimating(label: AGTypewriterLabel) {
        print("Finished Animating!")
        
        // Depending on how you are using the label, it might be wise to clear the animations when you're done!
        typewriterLabel.clearAnimations()
    }
    


}

