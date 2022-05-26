//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Elahe  Sharifi on 25/05/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calulateBMI(height:Float ,weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies", color: .blue)
        }else if bmiValue < 24.5{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pies", color: .blue)
        }
    }
    
}
