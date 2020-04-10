//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by אדיר נוימן on 09/04/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation


//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by אדיר נוימן on 09/04/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValueCalc =  weight / pow(height,2)
        
        
        if bmiValueCalc < 18.5 {
            
           bmiValue = BMI(value: bmiValueCalc, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            
        } else if bmiValueCalc < 24.9 {
            
            bmiValue = BMI(value: bmiValueCalc, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            
            bmiValue = BMI(value: bmiValueCalc, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        
        

        
    }
    
    func getBMIvalue() -> String {
        
        let bmiResultDisplay = String(format: "%.2f", bmiValue?.value ?? 0.0)
        return bmiResultDisplay
    }
    
    func getAdvice() -> String {
        
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
           
        return bmiValue?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
       }
    
    
}
