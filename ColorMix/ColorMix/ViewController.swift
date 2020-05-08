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
        updateControls()
        
        //  create border
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.darkGray.cgColor
        
    }
    
    //    MARK: - @IBOutlets
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    //    MARK: - @IBActions
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControls()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        updateColor()
        updateControls()
    }
    
    //    MARK: - Supports
    
    //  metod starts with three var initialized to 0
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue:CGFloat = 0
        
        //  check each switch value of slider and assigns it
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        //  color is created from the components
        let color = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
        
        //  the color of colorView is set
        colorView.backgroundColor = color
    }
    
    //  to make sure all of the sliders are enabled properly
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
}
