//
//  MonsterController.swift
//  Slayer
//
//  Created by Logan Davis on 10/19/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class MonsterController {
    
    static let shared = MonsterController()
    
    var monsters: [Monster] {
        
        var unlockedMonsters: [Monster] = []
        let allMasters = MasterController.masters
        let duradel = MasterController.masters[0]
        let stronghold = MasterController.masters[1]
        let chaeldar = MasterController.masters[2]
        
        let defaults = UserDefaults.standard
        let currentPlayer = PlayerController.shared.playerName.lowercased()
        let boneVoyageKey = "boneVoyageKey\(currentPlayer)"
        let cabinFeverKey = "cabinKey\(currentPlayer)"
        let contactKey = "contactKey\(currentPlayer)"
        let deathPlateauKey = "plateauKey\(currentPlayer)"
        let deathToTheDorgeshuunKey = "dorgKey\(currentPlayer)"
        let lostCityKey = "lostKey\(currentPlayer)"
        let lunarDiplomacyKey = "lunarKey\(currentPlayer)"
        let mourningsEndPart2Key = "mep2Key\(currentPlayer)"
        let olafsQuestKey = "olafKey\(currentPlayer)"
        let priestInPerilKey = "priestKey\(currentPlayer)"
        let regicideKey = "regicideKey\(currentPlayer)"
        let rumDealKey = "rumKey\(currentPlayer)"
        let skippyKey = "skippyKey\(currentPlayer)"
        let aviansieKey = "aviansieKey\(currentPlayer)"
        let bossKey = "bossKey\(currentPlayer)"
        let lizardmenKey = "lizardmenKey\(currentPlayer)"
        let mithrilKey = "mithrilKey\(currentPlayer)"
        let redKey = "redKey\(currentPlayer)"
        let tzhaarKey = "tzhaarKey\(currentPlayer)"
        
        let boneVoyageMonsters = [
            Monster(image: #imageLiteral(resourceName: "Ancient_Wyvern"), name: "Fossil Island Wyvern", assigningMasters: allMasters, level: 82)
        ]
        let cabinFeverMonsters = [
            Monster(image: #imageLiteral(resourceName: "Cave_horror"), name: "Cave Horror", assigningMasters: allMasters, level: 58),
            Monster(image: #imageLiteral(resourceName: "Jungle_horror"), name: "Jungle Horror", assigningMasters: [chaeldar], level: 1)
        ]
        let contactMonsters = [
            Monster(image: #imageLiteral(resourceName: "Locust_rider_(ranged)"), name: "Scabarites", assigningMasters: [stronghold], level: 1)
        ]
        let deathPlateauMonsters = [
            Monster(image: #imageLiteral(resourceName: "Spiritual_mage_(Zamorak)"), name: "Spiritual Creatures", assigningMasters: allMasters, level: 63)
        ]
        let deathToTheDorgeshuunMonsters = [
            Monster(image: #imageLiteral(resourceName: "Molanisk"), name: "Molanisk", assigningMasters: [chaeldar], level: 39)
        ]
        let lostCityMonsters = [
            Monster(image: #imageLiteral(resourceName: "Zygomite"), name: "Zygomite", assigningMasters: allMasters, level: 57)
        ]
        let lunarDiplomacyMonsters = [
            Monster(image: #imageLiteral(resourceName: "Suqah"), name: "Suqah", assigningMasters: [duradel, stronghold], level: 1)
        ]
        let mourningsEndPart2Monsters = [
            Monster(image: #imageLiteral(resourceName: "Dark_beast"), name: "Dark Beast", assigningMasters: [duradel, stronghold], level: 90)
        ]
        let olafsQuestMonsters = [
            Monster(image: #imageLiteral(resourceName: "Brine_rat"), name: "Brine Rat", assigningMasters: [stronghold, chaeldar], level: 47)
        ]
        let priestInPerilMonsters = [
            Monster(image: #imageLiteral(resourceName: "Gargoyle"), name: "Gargoyle", assigningMasters: allMasters, level: 75),
            Monster(image: #imageLiteral(resourceName: "Infernal_Mage"), name: "Infernal Mage", assigningMasters: [chaeldar], level: 45)
        ]
        let regicideMonsters = [
            Monster(image: #imageLiteral(resourceName: "Elf_warrior"), name: "Elves", assigningMasters: allMasters, level: 1)
        ]
        let rumDealMonsters = [
            Monster(image: #imageLiteral(resourceName: "Fever_spider"), name: "Fever Spider", assigningMasters: [chaeldar], level: 42)
        ]
        let skippyAndTheMogresMonsters = [
            Monster(image: #imageLiteral(resourceName: "Mogre"), name: "Mogre", assigningMasters: [chaeldar], level: 32)
        ]
        let unlockAviansieTask = [
            Monster(image: #imageLiteral(resourceName: "Aviansie"), name: "Aviansie", assigningMasters: allMasters, level: 1)
        ]
        let unlockBossTask = [
            Monster(image: #imageLiteral(resourceName: "Zulrah"), name: "Boss", assigningMasters: [duradel, stronghold], level: 1)
        ]
        let unlockLizardmenTask = [
            Monster(image: #imageLiteral(resourceName: "Lizardman_shaman"), name: "Lizardmen", assigningMasters: allMasters, level: 1)
        ]
        let unlockMithrilsTask = [
            Monster(image: #imageLiteral(resourceName: "Mithril_dragon"), name: "Mithril Dragon", assigningMasters: [duradel, stronghold], level: 1)
        ]
        let unlockRedDragonTask = [
            Monster(image: #imageLiteral(resourceName: "Red_dragon"), name: "Red Dragon", assigningMasters: [duradel, stronghold], level: 1)
        ]
        let unlockTzHaarTask = [
            Monster(image: #imageLiteral(resourceName: "TzTok-Jad"), name: "TzHaar", assigningMasters: [duradel, stronghold], level: 1)
        ]
        let defaultMonsters = [
            Monster(image: #imageLiteral(resourceName: "Aberrant_spectre"), name: "Aberrant Spectre", assigningMasters: allMasters, level: 60),
            Monster(image: #imageLiteral(resourceName: "Abyssal_demon"), name: "Abyssal Demon", assigningMasters: allMasters, level: 85),
            Monster(image: #imageLiteral(resourceName: "Ankou"), name: "Ankou", assigningMasters: [duradel, stronghold], level: 1),
            Monster(image: #imageLiteral(resourceName: "Banshee"), name: "Banshee", assigningMasters: [chaeldar], level: 15),
            Monster(image: #imageLiteral(resourceName: "Basilisk"), name: "Basilisk", assigningMasters: [chaeldar], level: 40),
            Monster(image: #imageLiteral(resourceName: "Black_demon"), name: "Black Demon", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Black_dragon"), name: "Black Dragon", assigningMasters: [duradel, stronghold], level: 1),
            Monster(image: #imageLiteral(resourceName: "Bloodveld"), name: "Bloodveld", assigningMasters: allMasters, level: 50),
            Monster(image: #imageLiteral(resourceName: "Blue_dragon"), name: "Blue Dragon", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Bronze_dragon"), name: "Bronze Dragon", assigningMasters: [chaeldar], level: 1),
            Monster(image: #imageLiteral(resourceName: "Cave_crawler"), name: "Cave Crawler", assigningMasters: [chaeldar], level: 10),
            Monster(image: #imageLiteral(resourceName: "Cave_kraken"), name: "Cave Kraken", assigningMasters: allMasters, level: 87),
            Monster(image: #imageLiteral(resourceName: "Cave_slime"), name: "Cave Slime", assigningMasters: [chaeldar], level: 17),
            Monster(image: #imageLiteral(resourceName: "Cockatrice"), name: "Cockatrice", assigningMasters: [chaeldar], level: 25),
            Monster(image: #imageLiteral(resourceName: "Dagannoth"), name: "Dagannoth", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Desert_lizard"), name: "Desert Lizard", assigningMasters: [chaeldar], level: 22),
            Monster(image: #imageLiteral(resourceName: "Dust_devil"), name: "Dust Devil", assigningMasters: allMasters, level: 65),
            Monster(image: #imageLiteral(resourceName: "Fire_giant"), name: "Fire Giant", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Greater_demon"), name: "Greater Demon", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Harpie_Bug_Swarm"), name: "Harpie Bug Swarm", assigningMasters: [chaeldar], level: 33),
            Monster(image: #imageLiteral(resourceName: "Hellhound"), name: "Hellhound", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Iron_dragon"), name: "Iron Dragon", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Jelly"), name: "Jelly", assigningMasters: [chaeldar], level: 52),
            Monster(image: #imageLiteral(resourceName: "Kalphite_Worker"), name: "Kalphite", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Kurask"), name: "Kurask", assigningMasters: allMasters, level: 70),
            Monster(image: #imageLiteral(resourceName: "Lesser_demon"), name: "Lesser Demon", assigningMasters: [chaeldar], level: 1),
            Monster(image: #imageLiteral(resourceName: "Nechryael"), name: "Nechryael", assigningMasters: allMasters, level: 80),
            Monster(image: #imageLiteral(resourceName: "Pyrefiend"), name: "Pyrefiend", assigningMasters: [chaeldar], level: 30),
            Monster(image: #imageLiteral(resourceName: "Rockslug"), name: "Rockslug", assigningMasters: [chaeldar], level: 20),
            Monster(image: #imageLiteral(resourceName: "Shadow_warrior"), name: "Shadow Warrior", assigningMasters: [chaeldar], level: 1),
            Monster(image: #imageLiteral(resourceName: "Skeletal_Wyvern"), name: "Skeletal Wyvern", assigningMasters: allMasters, level: 72),
            Monster(image: #imageLiteral(resourceName: "Smoke_devil"), name: "Smoke Devil", assigningMasters: [duradel, stronghold], level: 93),
            Monster(image: #imageLiteral(resourceName: "Steel_dragon"), name: "Steel Dragon", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Ice_troll"), name: "Troll", assigningMasters: allMasters, level: 1),
            Monster(image: #imageLiteral(resourceName: "Turoth"), name: "Turoth", assigningMasters: allMasters, level: 55),
            Monster(image: #imageLiteral(resourceName: "Wall_beast"), name: "Wall Beast", assigningMasters: [chaeldar], level: 35),
            Monster(image: #imageLiteral(resourceName: "Waterfiend"), name: "Waterfiend", assigningMasters: [duradel], level: 1)
        ]
        
        let setBone = defaults.value(forKey: boneVoyageKey) as! Bool
        if setBone == true { unlockedMonsters.append(contentsOf: boneVoyageMonsters) }
        
        let setCabin = defaults.value(forKey: cabinFeverKey) as! Bool
        if setCabin == true { unlockedMonsters.append(contentsOf: cabinFeverMonsters) }
        
        let setContact = defaults.value(forKey: contactKey) as! Bool
        if setContact == true { unlockedMonsters.append(contentsOf: contactMonsters) }
        
        let setPlateau = defaults.value(forKey: deathPlateauKey) as! Bool
        if setPlateau == true { unlockedMonsters.append(contentsOf: deathPlateauMonsters) }
        
        let setDorg = defaults.value(forKey: deathToTheDorgeshuunKey) as! Bool
        if setDorg == true { unlockedMonsters.append(contentsOf: deathToTheDorgeshuunMonsters) }
        
        let setLost = defaults.value(forKey: lostCityKey) as! Bool
        if setLost == true { unlockedMonsters.append(contentsOf: lostCityMonsters) }
        
        let setLunar = defaults.value(forKey: lunarDiplomacyKey) as! Bool
        if setLunar == true { unlockedMonsters.append(contentsOf: lunarDiplomacyMonsters) }
        
        let setMEP2 = defaults.value(forKey: mourningsEndPart2Key) as! Bool
        if setMEP2 == true { unlockedMonsters.append(contentsOf: mourningsEndPart2Monsters) }
        
        let setOlaf = defaults.value(forKey: olafsQuestKey) as! Bool
        if setOlaf == true { unlockedMonsters.append(contentsOf: olafsQuestMonsters) }
        
        let setPriest = defaults.value(forKey: priestInPerilKey) as! Bool
        if setPriest == true { unlockedMonsters.append(contentsOf: priestInPerilMonsters) }
        
        let setRegicide = defaults.value(forKey: regicideKey) as! Bool
        if setRegicide == true { unlockedMonsters.append(contentsOf: regicideMonsters) }
        
        let setRum = defaults.value(forKey: rumDealKey) as! Bool
        if setRum == true { unlockedMonsters.append(contentsOf: rumDealMonsters) }
        
        let setSkippy = defaults.value(forKey: skippyKey) as! Bool
        if setSkippy == true { unlockedMonsters.append(contentsOf: skippyAndTheMogresMonsters) }
        
        let setAviansie = defaults.value(forKey: aviansieKey) as! Bool
        if setAviansie == true { unlockedMonsters.append(contentsOf: unlockAviansieTask) }
        
        let setBoss = defaults.value(forKey: bossKey) as! Bool
        if setBoss == true { unlockedMonsters.append(contentsOf: unlockBossTask) }
        
        let setLizardmen = defaults.value(forKey: lizardmenKey) as! Bool
        if setLizardmen == true { unlockedMonsters.append(contentsOf: unlockLizardmenTask) }
        
        let setMithrils = defaults.value(forKey: mithrilKey) as! Bool
        if setMithrils == true { unlockedMonsters.append(contentsOf: unlockMithrilsTask) }
    
        let setReds = defaults.value(forKey: redKey) as! Bool
        if setReds == true { unlockedMonsters.append(contentsOf: unlockRedDragonTask) }

        let setTzhaar = defaults.value(forKey: tzhaarKey) as! Bool
        if setTzhaar == true { unlockedMonsters.append(contentsOf: unlockTzHaarTask) }
        
        unlockedMonsters.append(contentsOf: defaultMonsters)
        
        return unlockedMonsters
    }
    static var currentMonster: Monster?
}


//if let setBoss = UserDefaults.standard.value(forKey: bossKey) {
//    let unlockBoss = setBoss as! Bool
//    if unlockBoss == true {
//        unlockedMonsters.append(contentsOf: unlockBossTask)
//    }
//}

