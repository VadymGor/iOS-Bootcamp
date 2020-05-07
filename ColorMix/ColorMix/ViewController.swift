//
//  ViewController.swift
//  ColorMix
//
//  Created by Vadym Horovyi on 07/05/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
    }
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }
    
    //  metod starts with three var initialized to 0
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue:CGFloat = 0
        
        //  check each switch value and sets the component to 1 if switch is on
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        
//  color is created from the components
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
//  the color of colorView is set
        colorView.backgroundColor = color
    }
}


