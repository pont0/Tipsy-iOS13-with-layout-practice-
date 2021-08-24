//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var spliNumberLabel: UILabel!
    
    var selectedTip = 0.0
    @IBAction func tipChanged(_ sender: UIButton) {
        //dismiss the keyboard
        billTextField.endEditing(true)
        
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        if sender.currentTitle! == "0%" {
            //zeroPctButton.isSelected = true
            
        }else if sender.currentTitle! == "10%" {
            //tenPctButton.isSelected = true
            selectedTip = 0.1
        }else{
            if sender.currentTitle! == "20%" {
                //twentyPctButton.isSelected = true
                selectedTip = 0.2
            }
        }
        
    }
    
    var splitNumber = 0.0
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        spliNumberLabel.text = String(format: "%.0f", sender.value)
        splitNumber = sender.value
    }
    
    var bill = 0.0
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        bill = Double(billTextField.text ?? "") ?? 0.0
        
        
       let calculate = (bill + (bill * selectedTip)) / splitNumber
        
        print(String(format: "%.2f", calculate))
    }
    
    
  


}

