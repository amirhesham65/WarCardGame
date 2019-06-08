//
//  ViewController.swift
//  WarCardGame
//
//  Created by Amir Hesham on 6/7/19.
//  Copyright © 2019 Amir Hesham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Connecting to the UI object
    @IBOutlet weak var leftImageView: UIImageView!

    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    // Recording the score
    var playerScore: Int = 0
    var cpuScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Handling the Deal Button Event
    @IBAction func dealTapped(_ sender: Any) {
        
        // Generating a random numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Setting random images based on the random numbers
        leftImageView.image = UIImage(named: "card" + String(leftNumber))
        rightImageView.image = UIImage(named: "card" + String(rightNumber))
        
        // Comapring the cards
        if leftNumber > rightNumber {
            // The player gains a point
            playerScore += 1
        }else if rightNumber > leftNumber {
            // The CPU gains a point
            cpuScore += 1
        }else {
            // If the equals
            playerScore += 1
            cpuScore += 1
        }
        
        // Displaying the score
        leftScoreLabel.text = String(playerScore)
        rightScoreLabel.text = String(cpuScore)
    }
    

}

