//
//  Bill.swift
//  Tipsy
//
//  Created by Bruna Machado on 24/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

struct Bill {
    var billValue: Double?
    var tipValue = 0.0
    var splitNumber = 2
    
    func Calculate() -> Double {
        var bill = billValue ?? 0.0
        
        return (bill * (1 + tipValue)) / Double(splitNumber)
    }
    
}
