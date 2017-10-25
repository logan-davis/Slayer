//
//  QuestController.swift
//  Slayer
//
//  Created by Logan Davis on 10/24/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class QuestController {
    
    static var quests: [Quest] {
        let monkeymadness2 = Quest(name: "Monkey Madness 2")
        let horrorFromTheDeep = Quest(name: "Horror from the Deep")
        let lunarDiplomacy = Quest(name: "Lunar Diplomacy")
        let priestInPeril = Quest(name: "Priest in Peril")
        let cabinFever = Quest(name: "Cabin Fever")
        let mourningsEndPart2 = Quest(name: "Mournings End Part 2")
        let rumDeal = Quest(name: "Rum Deal")
        let deathToTheDorgeshuun = Quest(name: "Death to the Dorgeshuun")
        let olafsQuest = Quest(name: "Olaf's Quest")
        let desertTreasure = Quest(name: "Desert Treasure")
        
        return [monkeymadness2, horrorFromTheDeep, lunarDiplomacy, priestInPeril, cabinFever, mourningsEndPart2, rumDeal, deathToTheDorgeshuun, olafsQuest, desertTreasure]
    }
}
