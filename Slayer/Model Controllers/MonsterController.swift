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
        let player = PlayerController.shared.currentPlayer
        let allMasters = MasterController.masters
        let duradel = MasterController.masters[0]
        let stronghold = MasterController.masters[1]
        let chaeldar = MasterController.masters[2]
        
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
        
        if player?.boneVoyage == true {
            unlockedMonsters.append(contentsOf: boneVoyageMonsters)
        }
        if player?.cabinFever == true {
            unlockedMonsters.append(contentsOf: cabinFeverMonsters)
        }
        if player?.contact == true {
            unlockedMonsters.append(contentsOf: contactMonsters)
        }
        if player?.deathPlateau == true {
            unlockedMonsters.append(contentsOf: deathPlateauMonsters)
        }
        if player?.deathToTheDorgeshuun == true {
            unlockedMonsters.append(contentsOf: deathToTheDorgeshuunMonsters)
        }
        if player?.lostCity == true {
            unlockedMonsters.append(contentsOf: lostCityMonsters)
        }
        if player?.lunarDiplomacy == true {
            unlockedMonsters.append(contentsOf: lunarDiplomacyMonsters)
        }
        if player?.mourningsEndPart2 == true {
            unlockedMonsters.append(contentsOf: mourningsEndPart2Monsters)
        }
        if player?.olafsQuest == true {
            unlockedMonsters.append(contentsOf: olafsQuestMonsters)
        }
        if player?.priestInPeril == true {
            unlockedMonsters.append(contentsOf: priestInPerilMonsters)
        }
        if player?.regicide == true {
            unlockedMonsters.append(contentsOf: regicideMonsters)
        }
        if player?.rumDeal == true {
            unlockedMonsters.append(contentsOf: rumDealMonsters)
        }
        if player?.skippyAndTheMogres == true {
            unlockedMonsters.append(contentsOf: skippyAndTheMogresMonsters)
        }
        if player?.unlockAviansie == true {
            unlockedMonsters.append(contentsOf: unlockAviansieTask)
        }
        if player?.unlockBoss == true {
            unlockedMonsters.append(contentsOf: unlockBossTask)
        }
        if player?.unlockLizardmen == true {
            unlockedMonsters.append(contentsOf: unlockLizardmenTask)
        }
        if player?.unlockMithrilDragon == true {
            unlockedMonsters.append(contentsOf: unlockMithrilsTask)
        }
        if player?.unlockRedDragon == true {
            unlockedMonsters.append(contentsOf: unlockRedDragonTask)
        }
        if player?.unlockTzHaar == true {
            unlockedMonsters.append(contentsOf: unlockTzHaarTask)
        }
        
        unlockedMonsters.append(contentsOf: defaultMonsters)
        
        return unlockedMonsters
    }
    static var currentMonster: Monster?
}
