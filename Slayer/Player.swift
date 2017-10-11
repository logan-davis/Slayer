//
//  Player.swift
//  Slayer
//
//  Created by Logan Davis on 10/11/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class Player {
    
    private let attackKey = "attack"
    private let strengthKey = "strength"
    private let defenceKey = "defence"
    private let hitpointsKey = "constitution"
    private let magicKey = "magic"
    private let rangeKey = "range"
    private let prayerKey = "prayer"
    private let slayerKey = "slayer"
    
    let attack: Int
    let strength: Int
    let defence: Int
    let constitution: Int
    let magic: Int
    let range: Int
    let prayer: Int
    let slayer: Int
    
    init?(dictionary: [String:Any]) {
        guard let attackDictionary = dictionary[attackKey] as? [String:Any],
            let strengthDictionary = dictionary[strengthKey] as? [String:Any],
            let defenceDictionary = dictionary[defenceKey] as? [String:Any],
            let constitutionDictionary = dictionary[hitpointsKey] as? [String:Any],
            let magicDictionary = dictionary[magicKey] as? [String:Any],
            let rangeDictionary = dictionary[rangeKey] as? [String:Any],
            let prayerDictionary = dictionary[prayerKey] as? [String:Any],
            let slayerDictionary = dictionary[slayerKey] as? [String:Any],
            
            let attack = attackDictionary["level"] as? Int,
            let strength = strengthDictionary["level"] as? Int,
            let defence = defenceDictionary["level"] as? Int,
            let constitution = constitutionDictionary["level"] as? Int,
            let magic = magicDictionary["level"] as? Int,
            let range = rangeDictionary["level"] as? Int,
            let prayer = prayerDictionary["level"] as? Int,
            let slayer = slayerDictionary["level"] as? Int
            
            else { return nil }
        
        self.attack = attack
        self.strength = strength
        self.defence = defence
        self.constitution = constitution
        self.magic = magic
        self.range = range
        self.prayer = prayer
        self.slayer = slayer
    }
}
