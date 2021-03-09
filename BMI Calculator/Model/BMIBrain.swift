//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by SRBD on 2/26/21.
//  Copyright © 2021 Md. Humayon Kobir. All rights reserved.
//

import UIKit

struct BMIBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            
            bmi = BMI(result: String(format: "%.2f", bmiValue), advice: "Eat More Pies", color: #colorLiteral(red: 0.2820420563, green: 0.5660726428, blue: 0.9924054742, alpha: 1))
            
        } else if bmiValue < 24.9 {
            
            bmi = BMI(result: String(format: "%.2f", bmiValue), advice: "Fit As Fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
            
        } else {
            
            bmi = BMI(result: String(format: "%.2f", bmiValue), advice: "Eat Less Pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
            
        }
    }
    
    func getCalculatedBMI() -> BMI {
        return bmi ?? BMI(result: "no result", advice: "no advice", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    }
}
