//
//  ViewController.swift
//  Tap Game
//
//  Created by Valentina Grando on 9/14/19.
//  Copyright © 2019 Valentina B. Grando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    var player1Score = 0
    var player2Score = 0
    var isGameStarted = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func player1Tapped(_ sender: Any) {
        if (isGameStarted) {
            player1Score += 1
            updateLabels()
        }
    }
    @IBAction func player2Tapped(_ sender: Any) {
        if (isGameStarted) {
            player2Score += 1
            updateLabels()
        }
    }
    
    @IBAction func startWasPressed(_ sender: UIButton) {
        sender.isEnabled = false
        if (!isGameStarted){
            isGameStarted = true
            player1Score = 0
            player2Score = 0
            updateLabels()
//            sender.setTitleColor(UIColor.grayColor(), for: .Disabled)
            
            let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (timer) in
                sender.isEnabled = true
                self.isGameStarted = false
            }
        }
        
    }
    
  
    func updateLabels() {
        player1ScoreLabel.text = "Player 1 Score: \(player1Score)"
        player2ScoreLabel.text = "Player 1 Score: \(player2Score)"
    }
    
    
    
}

