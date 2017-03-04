//
//  main.swift
//  MemoryManagement
//
//  Created by Josué V. Herrera on 1/18/17.
//  Copyright © 2017 Josué V. Herrera. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    
    let name: String
    var assets = [Asset]()
    var creditCards = [CreditCard?]()

    init (name: String) {
        
        self.name = name
        
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
        
    } // takeOwnershipOfAsset
    
    func takeOwnershipOfCreditCard(myCreditCard: CreditCard) {

        creditCards.append(myCreditCard)
        
    } // takeOwnershipOfAsset

} // Person

var gochi: Person? = Person(name: "Gochi")

print("\nObjeto \(gochi!) creado.")

var masterCard: CreditCard? = CreditCard(owner: gochi!)

gochi?.takeOwnershipOfCreditCard(myCreditCard: masterCard!)

var laptop: Asset? = Asset(name: "Macbook Pro", value: 2500)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 150)
var backpack: Asset? = Asset(name: "Black Backpack", value: 30)

gochi?.takeOwnershipOfAsset(asset: laptop!)
gochi?.takeOwnershipOfAsset(asset: hat!)

masterCard = nil

gochi = nil

print("\nEL objeto Gochi ahora es: \(gochi).")

laptop = nil
hat = nil
backpack = nil

print()






