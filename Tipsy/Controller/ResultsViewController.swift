//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Bruna Machado on 22/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var totalBill = 0.0
    var totalPeople = 0
    var tip = 0.0

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tipConverted = Int(tip * 100)

        totalLabel.text = String(format: "%.2f", totalBill)
        settingsLabel.text = "Split between \(totalPeople) people, with \(tipConverted)% tip"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    

}
