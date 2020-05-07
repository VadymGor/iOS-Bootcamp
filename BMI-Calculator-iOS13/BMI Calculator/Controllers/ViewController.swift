//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Vadym Horovyi on 05/05/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
    
}

