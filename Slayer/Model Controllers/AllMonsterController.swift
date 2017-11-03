//
//  AllMonsterController.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class AllMonsterController {
    
    static let shared = AllMonsterController()
    
    static var allMonsters: [AllMonster] {
        
        let allMasters = MasterController.masters
        let duradel = MasterController.masters[0]
        let stronghold = MasterController.masters[1]
        let chaeldar = MasterController.masters[2]
        
        let allMonstersList = [
            AllMonster(image: #imageLiteral(resourceName: "Aberrant_spectre"), name: "Aberrant Spectre", assigningMasters: allMasters, level: 60, examine: "A very smelly ghost."),
            AllMonster(image: #imageLiteral(resourceName: "Abyssal_demon"), name: "Abyssal Demon", assigningMasters: allMasters, level: 85, examine: "A denizen of the Abyss!"),
            AllMonster(image: #imageLiteral(resourceName: "Ankou"), name: "Ankou", assigningMasters: [duradel, stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Aviansie"), name: "Aviansie", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Banshee"), name: "Banshee", assigningMasters: [chaeldar], level: 15, examine: "A tortured screaming soul."),
            AllMonster(image: #imageLiteral(resourceName: "Basilisk"), name: "Basilisk", assigningMasters: [chaeldar], level: 40, examine: "The eyes of evil."),
            AllMonster(image: #imageLiteral(resourceName: "Black_demon"), name: "Black Demon", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Black_dragon"), name: "Black Dragon", assigningMasters: [duradel, stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Bloodveld"), name: "Bloodveld", assigningMasters: allMasters, level: 50, examine: "The tongue of evil."),
            AllMonster(image: #imageLiteral(resourceName: "Blue_dragon"), name: "Blue Dragon", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Zulrah"), name: "Boss", assigningMasters: [duradel, stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Brine_rat"), name: "Brine Rat", assigningMasters: [stronghold, chaeldar], level: 47, examine: "Eww, a bald rat!"),
            AllMonster(image: #imageLiteral(resourceName: "Bronze_dragon"), name: "Bronze Dragon", assigningMasters: [chaeldar], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Cave_crawler"), name: "Cave Crawler", assigningMasters: [chaeldar], level: 10, examine: "A spiky crawling critter."),
            AllMonster(image: #imageLiteral(resourceName: "Cave_horror"), name: "Cave Horror", assigningMasters: allMasters, level: 58, examine: "A horrible, emaciated ape like creature with beady red eyes."),
            AllMonster(image: #imageLiteral(resourceName: "Cave_kraken"), name: "Cave Kraken", assigningMasters: allMasters, level: 87, examine: "Kraken' good time!"),
            AllMonster(image: #imageLiteral(resourceName: "Cave_slime"), name: "Cave Slime", assigningMasters: [chaeldar], level: 17, examine: "A foul-smelling blob of protoplasm."),
            AllMonster(image: #imageLiteral(resourceName: "Cockatrice"), name: "Cockatrice", assigningMasters: [chaeldar], level: 25, examine: "The winged reptile."),
            AllMonster(image: #imageLiteral(resourceName: "Dagannoth"), name: "Dagannoth", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Dark_beast"), name: "Dark Beast", assigningMasters: [duradel, stronghold], level: 90, examine: "From a darker dimension."),
            AllMonster(image: #imageLiteral(resourceName: "Desert_lizard"), name: "Desert Lizard", assigningMasters: [chaeldar], level: 22, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Dust_devil"), name: "Dust Devil", assigningMasters: allMasters, level: 65, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Elf_warrior"), name: "Elves", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Fever_spider"), name: "Fever Spider", assigningMasters: [chaeldar], level: 42, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Fire_giant"), name: "Fire Giant", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Ancient_Wyvern"), name: "Fossil Island Wyvern", assigningMasters: allMasters, level: 82, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Gargoyle"), name: "Gargoyle", assigningMasters: allMasters, level: 75, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Greater_demon"), name: "Greater Demon", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Harpie_Bug_Swarm"), name: "Harpie Bug Swarm", assigningMasters: [chaeldar], level: 33, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Hellhound"), name: "Hellhound", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Infernal_Mage"), name: "Infernal Mage", assigningMasters: [chaeldar], level: 45, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Iron_dragon"), name: "Iron Dragon", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Jelly"), name: "Jelly", assigningMasters: [chaeldar], level: 52, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Jungle_horror"), name: "Jungle Horror", assigningMasters: [chaeldar], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Kalphite_Worker"), name: "Kalphite", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Kurask"), name: "Kurask", assigningMasters: allMasters, level: 70, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Lesser_demon"), name: "Lesser Demon", assigningMasters: [chaeldar], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Lizardman_shaman"), name: "Lizardmen", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Mithril_dragon"), name: "Mithril Dragon", assigningMasters: [duradel, stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Mogre"), name: "Mogre", assigningMasters: [chaeldar], level: 32, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Molanisk"), name: "Molanisk", assigningMasters: [chaeldar], level: 39, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Nechryael"), name: "Nechryael", assigningMasters: allMasters, level: 80, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Pyrefiend"), name: "Pyrefiend", assigningMasters: [chaeldar], level: 30, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Red_dragon"), name: "Red Dragon", assigningMasters: [duradel, stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Rockslug"), name: "Rockslug", assigningMasters: [chaeldar], level: 20, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Locust_rider_(ranged)"), name: "Scabarites", assigningMasters: [stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Shadow_warrior"), name: "Shadow Warrior", assigningMasters: [chaeldar], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Skeletal_Wyvern"), name: "Skeletal Wyvern", assigningMasters: allMasters, level: 72, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Smoke_devil"), name: "Smoke Devil", assigningMasters: [duradel, stronghold], level: 93, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Spiritual_mage_(Zamorak)"), name: "Spiritual Creatures", assigningMasters: allMasters, level: 63, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Steel_dragon"), name: "Steel Dragon", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Suqah"), name: "Suqah", assigningMasters: [duradel, stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Ice_troll"), name: "Troll", assigningMasters: allMasters, level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Turoth"), name: "Turoth", assigningMasters: allMasters, level: 55, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "TzTok-Jad"), name: "TzHaar", assigningMasters: [duradel, stronghold], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Wall_beast"), name: "Wall Beast", assigningMasters: [chaeldar], level: 35, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Waterfiend"), name: "Waterfiend", assigningMasters: [duradel], level: 1, examine: ""),
            AllMonster(image: #imageLiteral(resourceName: "Zygomite"), name: "Zygomite", assigningMasters: allMasters, level: 57, examine: "")
        ]
        return allMonstersList
    }
    
    static var currentAllMonster: AllMonster?
}
