//
//  Person.swift
//  MemoryManagement
//
//  Created by Josué V. Herrera on 3/4/17.
//  Copyright © 2017 Josué V. Herrera. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    
    let name: String
    let accountant = Accountant()
    var assets = [Asset]()
    var creditCards = [CreditCard?]()
    
    init (name: String) {
        
        self.name = name
        
        accountant.netWorthChangedHandler = {
            
            [unowned self] in
            
            self.netWorthDidChange(netWorth: $0)
            
        }
        
    } // init
    
    deinit {
        
        print("\nLa memoria ocupada por el objeto \(self) está siendo liberada.")
        
    } // deinit
    
    var description: String {
        
        return name
        
    } // description
    
    func takeOwnershipOfAsset(asset: Asset) {
        
        asset.owner = self
        assets.append(asset)
        accountant.gainedNewAsset(asset: asset)
        
    } // takeOwnershipOfAsset
    
    func takeOwnershipOfCreditCard(myCreditCard: CreditCard) {
        
        creditCards.append(myCreditCard)
        
    } // takeOwnershipOfAsset
    
    func netWorthDidChange(netWorth: Double) {
        
        print("El patrimonio neto de \(self) es ahora \(netWorth)$.")
        
    } // netWorthDidChange
    
} // Person
