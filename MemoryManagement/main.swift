//
//  main.swift
//  MemoryManagement
//
//  Created by Josué V. Herrera on 1/18/17.
//  Copyright © 2017 Josué V. Herrera. All rights reserved.
//

import Foundation

var gochi: Person? = Person(name: "Gochi")

print("\nObjeto \(gochi!) creado.\n")

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
