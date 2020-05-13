//
//  ViewController.swift
//  RPS
//
//  Created by Vadym Horovyi on 12/05/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var statusOfGame: UILabel!
    
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startGame()
    }
    
    func startGame() {
        appSign.text = "🤖"
        statusOfGame.text = "Rock, Paper, Scissors?"
        rock.isHidden = false
        rock.isEnabled = true
        paper.isHidden = false
        paper.isEnabled = true
        scissors.isHidden = false
        scissors.isEnabled = true
        playAgain.isHidden = true
    }
    
    func playGame(_ playerTurn: Sign) {
        rock.isEnabled = false
        paper.isEnabled = false
        scissors.isEnabled = false
        
        let rival = randomSighn()
        appSign.text = rival.emoji
        
        let gameResult = playerTurn.throwThree(rival)
        
        switch gameResult {
        case .draw:
            statusOfGame.text = "It's a draw."
        case .win:
            statusOfGame.text = "You win!."
        case .lose:
            statusOfGame.text = "Sorry, you lose."
        case .start:
            statusOfGame.text = "Rock, Paper, Scissors?"
        }
        
        switch playerTurn {
        case .rock:
            rock.isHidden = false
            paper.isHidden = true
            scissors.isHidden = true
        case .paper:
            rock.isHidden = true
            paper.isHidden = false
            scissors.isHidden = true
        case .scissors:
            rock.isHidden = true
            paper.isHidden = true
            scissors.isHidden = false
        }
        playAgain.isHidden = false
    }
    
    //    MARK: - IBAction
    
    @IBAction func rock(_ sender: Any) {
        playGame(Sign.rock)
    }
    
    @IBAction func paper(_ sender: Any) {
        playGame(Sign.paper)
    }
    
    @IBAction func scissors(_ sender: Any) {
        playGame(Sign.scissors)
    }
    
    @IBAction func playAgain(_ sender: Any) {
        startGame()
    }
    
}

