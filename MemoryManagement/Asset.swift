//
//  Asset.swift
//  MemoryManagement
//
//  Created by Josué V. Herrera on 1/21/17.
//  Copyright © 2017 Josué V. Herrera. All rights reserved.
//

import Foundation

class Asset: CustomStringConvertible {
    
    let name: String
    let value: Double
    weak var owner: Person?

    init(name: String, value: Double) {
        
        self.name = name
        self.value = value
        
    } // init
    
    deinit {
    
        print("\nLa memoria ocupada por el objeto \(self) está siendo liberada.")
        
    } // deinit
    
    var description: String {
        
        if let actualOwner = owner {
            
            return "Asset (\(name), valor \(value), propiedad de \(actualOwner))"
            
        } else {
            
            return "Asset (\(name), valor \(value), no tiene propietario)"
            
        } // else
        
    } // description
    
} // Asset
