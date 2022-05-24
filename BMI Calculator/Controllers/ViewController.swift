//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let userHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(userHeight) m"
        
    }
    @IBAction func weightSliderChanger(_ sender: UISlider){
        let userWeight = String(format: "%.0f", sender.value)
    weightLabel.text = "\(userWeight)Kg"
    
    }
    @IBAction func calculateButtonSelected(_ sender: UIButton) {
    }
}

