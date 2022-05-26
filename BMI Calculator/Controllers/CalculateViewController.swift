//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculationBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
        
    }
    @IBAction func weightSliderChanger(_ sender: UISlider){
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
        
        
    }
    @IBAction func calculateButtonSelected(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
       
        calculationBrain.calulateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let desinationVC = segue.destination as! ResultViewController //as means force Downcasting
            desinationVC.bmiValue = calculationBrain.getBMIValue()
            desinationVC.advice = calculationBrain.getAdvice()
            desinationVC.color = calculationBrain.getColor()
        }
    }
}

