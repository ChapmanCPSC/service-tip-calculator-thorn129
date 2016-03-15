//
//  ViewController.swift
//  Assignment 2 Tip Calculator
//
//  Created by Kyle Thornton on 3/14/16.
//  Copyright © 2016 ThornTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var costTextField: UITextField!
    @IBOutlet weak var finalCostLabel: UILabel!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    //used ? to stop crash when there is no value
    var mealCost: Float?
    var tipPercent: Float = 10.0
    
    func finalCost() -> Float {
        if tipPercent == 1{
            return 0.1 * mealCost!
        }
        else if tipPercent == 2{
            return 0.1 * mealCost!
        }
        else if tipPercent == 3{
            return 0.1 * mealCost!
        }
        else if tipPercent == 4{
            return 0.13 * mealCost!
        }
        else if tipPercent == 5{
            return 0.13 * mealCost!
        }
        else if tipPercent == 6{
            return 0.15 * mealCost!
        }
        else if tipPercent == 7{
            return 0.15 * mealCost!
        }
        else if tipPercent == 8{
            return 0.20 * mealCost!
        }
        else if tipPercent == 9{
            return 0.20 * mealCost!
        }
        else{
            return 0.25 * mealCost!
        }
    }
    
    func updateFinalCostLabel() {
        if mealCost != nil {
            self.finalCostLabel.text = "\(finalCost())"
        } else if (self.costTextField.text!.isEmpty) {
            self.finalCostLabel.text = ""
        } else {
            self.finalCostLabel.text = "Invalid Cost!"
        }
    }
    
    @IBAction func tipSliderChanged(sender: UISlider) {
        self.tipPercent = round(sender.value)
        
        self.tipPercentLabel.text = "\(Int(self.tipPercent))"
        
        if mealCost != nil {
            self.finalCostLabel.text = "\(finalCost())"
        } else {
            self.finalCostLabel.text = ""
        }
    }
    
    
    @IBAction func costTextFieldChanged(sender: UITextField) {
        self.mealCost = Float(sender.text!)
        
        if mealCost != nil {
            self.finalCostLabel.text = "\(finalCost())"
        } else {
            self.finalCostLabel.text = ""
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

