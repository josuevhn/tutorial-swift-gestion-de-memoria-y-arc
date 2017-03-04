//
//  CreditCard.swift
//  MemoryManagement
//
//  Created by Josué V. Herrera on 1/25/17.
//  Copyright © 2017 Josué V. Herrera. All rights reserved.
//

import Foundation

class CreditCard: CustomStringConvertible {
    
    unowned let owner: Person
    
    init(owner: Person) {
        
        self.owner = owner
        
    } // init
    
    deinit {
        
        print("\nLa memoria ocupada por el objeto \(self) está siendo liberada.")
        
    } // deinit
    
    var description: String {
        
        return "CreditCard"

    } // description
    
} // CreditCard
