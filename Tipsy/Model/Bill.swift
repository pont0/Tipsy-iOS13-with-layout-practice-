//
//  Bill.swift
//  Tipsy
//
//  Created by Pablo Lisboa on 24/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

struct Bill {
    var billValue: Double?
    var tipValue = 0.0
    var splitNumber = 2.0
    
    func calculate() -> Double {
//        guard let bill = billValue else { return 0.0 }
        let bill = billValue ?? 0.0
        
        return (bill * (1 + tipValue)) / splitNumber
    }
    
}
