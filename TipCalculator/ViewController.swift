//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shivva Subramani on 3/12/17.
//  Copyright © 2017 Shivva Subramani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
  
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UITextField!
    @IBOutlet weak var totalAmountField: UITextField!
    @IBOutlet weak var tipSliderValue: UISlider!
    @IBAction func tipSliderChanged(_ sender: UISlider) {
        tipPercentageLabel.text! = "Tip Percentage " + String(Int(sender.value)) + "%"
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        if (Float(billAmountField.text!) != nil){
            calculateTipAmount()
            calculateTotalAmount()
        }
        else{
            tipAmountLabel.text! = "0.0"
            totalAmountField.text! = "0.0"
        }
    }
    func calculateTipAmount(){
        let tipAmount = Float(billAmountField.text!)! * (Float(Int(tipSliderValue.value))/100)
        tipAmountLabel.text! = String(tipAmount)
    }
    func calculateTotalAmount(){
        let totalAmount = Float(billAmountField.text!)! + Float(tipAmountLabel.text!)!
        totalAmountField.text! = String(totalAmount)
        
    }
}

