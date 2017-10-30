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
        guard let attackDictionary = dictionary[attackKey] as? [String:Int],
            let strengthDictionary = dictionary[strengthKey] as? [String:Int],
            let defenceDictionary = dictionary[defenceKey] as? [String:Int],
            let constitutionDictionary = dictionary[hitpointsKey] as? [String:Int],
            let magicDictionary = dictionary[magicKey] as? [String:Int],
            let rangeDictionary = dictionary[rangeKey] as? [String:Int],
            let prayerDictionary = dictionary[prayerKey] as? [String:Int],
            let slayerDictionary = dictionary[slayerKey] as? [String:Int],
            let attack = attackDictionary["level"],
            let strength = strengthDictionary["level"],
            let defence = defenceDictionary["level"],
            let constitution = constitutionDictionary["level"],
            let magic = magicDictionary["level"],
            let range = rangeDictionary["level"],
            let prayer = prayerDictionary["level"],
            let slayer = slayerDictionary["level"]
            
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
