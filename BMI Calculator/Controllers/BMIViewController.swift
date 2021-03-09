//
//  BMIViewController.swift
//  BMI Calculator
//
//  Created by SRBD on 2/26/21.
//  Copyright © 2021 Md. Humayon Kobir. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var bmiBrain: BMIBrain = BMIBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
        
    }
    
    @IBAction func wegithSliderChanged(_ sender: UISlider) {
        
        weightLabel.text = String(format: "%.0f", sender.value) + "kg"
    
    }
    
    @IBAction func calculateBMIPressed(_ sender: UIButton) {
        
        bmiBrain.calculateBMI(weight: weightSlider.value, height: heightSlider.value)
        performSegue(withIdentifier: "gotoResultView", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        super.prepare(for: segue, sender: sender)
        
        if let resultViewController = segue.destination as? ResultViewController {
            
            resultViewController.modalPresentationStyle = .fullScreen
            resultViewController.bmi = bmiBrain.getCalculatedBMI()

        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
