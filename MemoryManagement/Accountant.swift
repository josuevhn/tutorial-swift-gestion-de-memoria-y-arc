//
//  Accountant.swift
//  MemoryManagement
//
//  Created by Josué V. Herrera on 3/3/17.
//  Copyright © 2017 Josué V. Herrera. All rights reserved.
//

import Foundation

class Accountant: CustomStringConvertible {
    
    typealias NetWorthChanged = (Double) -> ()
    
    var netWorthChangedHandler: NetWorthChanged? = nil
    
    var netWorth: Double = 0.0 {
        
        didSet {
            
            netWorthChangedHandler?(netWorth)
            
        } // didSet
        
    } // netWorth
    
    deinit {
        
        print("\nLa memoria ocupada por el objeto \(self) está siendo liberada.")
        
    } // deinit
    
    var description: String {
        
        return "Accountant"
        
    } // description
    
    func gainedNewAsset(asset: Asset) {
        
        netWorth += asset.value
        
    } // gainedNewAsset
    
} // Accountant
