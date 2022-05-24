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
        print(String(format: "%.2f", sender.value))
        
    }
    @IBAction func weightSliderChanger(_ sender: UISlider) {
        print(Int(sender.value))
        
    }
    @IBAction func calculateButtonSelected(_ sender: UIButton) {
    }
}

