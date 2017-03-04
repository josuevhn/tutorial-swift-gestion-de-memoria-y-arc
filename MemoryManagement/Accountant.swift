//
//  Accountant.swift
//  MemoryManagement
//
//  Created by Josué V. Herrera on 3/3/17.
//  Copyright © 2017 Josué V. Herrera. All rights reserved.
//

import Foundation

class Accountant {
    
    typealias NetWorthChanged = (Double) -> ()
    
    var netWorthChangedHandler: NetWorthChanged? = nil
    
    var netWorth: Double = 0.0 {
        
        didSet {
            
            netWorthChangedHandler?(netWorth)
            
        } // didSet
        
    } // netWorth
    
    func gainedNewAsset(asset: Asset) {
        
        netWorth += asset.value
        
    } // gainedNewAsset
    
} // Accountant
