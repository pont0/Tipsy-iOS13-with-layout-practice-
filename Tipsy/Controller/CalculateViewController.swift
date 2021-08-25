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
    
    var bill = Bill()
    
    @IBAction func tipChanged(_ sender: UIButton) {
        //dismiss the keyboard
        billTextField.endEditing(true)
        
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        if sender.currentTitle! == "0%" {
            //zeroPctButton.isSelected = true
            bill.tipValue = 0.0
        }else if sender.currentTitle! == "10%" {
            bill.tipValue = 0.1
        }else if sender.currentTitle! == "20%" {
            bill.tipValue = 0.2
            
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        //converting textfield
        spliNumberLabel.text = String(format: "%.0f", sender.value)
        bill.splitNumber = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    
        bill.billValue = Double(billTextField.text ?? "") ?? 0.0

        //calls result screen
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let resultVC = segue.destination as! ResultsViewController
            resultVC.totalBill = bill.Calculate()
            resultVC.totalPeople = Int(bill.splitNumber)
            resultVC.tip = bill.tipValue
        }
    
    }

}

