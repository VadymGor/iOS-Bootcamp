//
//  ViewController.swift
//  MemeMaker
//
//  Created by Vadym Horovyi on 13/05/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionControl: UISegmentedControl!
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coolChoice = CaptionChoice(emoji: "😎", caption: "You now what's cool?")
        let madChoice = CaptionChoice(emoji: "😡", caption: "You now what makes me mad?")
        let loveChoice = CaptionChoice(emoji: "😍", caption: "You now what I love?")
        
        topChoices = [coolChoice, madChoice, loveChoice]
        topCaptionControl.removeAllSegments()
        for choice in topChoices {
            topCaptionControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
        topCaptionControl.selectedSegmentIndex = 0
        

        let catChoice = CaptionChoice(emoji: "🐈", caption: "Cats wearing hats.")
        let dogChoice = CaptionChoice(emoji: "🐕", caption: "Dogs carrying logs.")
        let monkeyChoice = CaptionChoice(emoji: "🐒", caption: "Monkyes being funky.")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        bottomCaptionControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
        bottomCaptionControl.selectedSegmentIndex = 0
        
        updateLabels()
    }
    
    
    func updateLabels() {
        let topIndex = topCaptionControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
        
    }
    
    
    @IBAction func choiceSelected(_ sender: Any) {
        updateLabels()
        
    }
}
