//
//  MonsterController.swift
//  Slayer
//
//  Created by Logan Davis on 10/19/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class MonsterController {
    
    static var monsters: [Monster] = [
        Monster(image: #imageLiteral(resourceName: "Aberrant_spectre"), name: "Aberrant Spectre", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Abyssal_demon"), name: "Abyssal Demon", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Ankou"), name: "Ankou", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Aviansie"), name: "Aviansie", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Banshee"), name: "Banshee", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Basilisk"), name: "Basilisk", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Black_demon"), name: "Black Demon", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Black_dragon"), name: "Black Dragon", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Bloodveld"), name: "Bloodveld", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Blue_dragon"), name: "Blue Dragon", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Zulrah"), name: "Boss", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Brine_rat"), name: "Brine Rat", assigningMasters: [MasterController.masters[1], MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Bronze_dragon"), name: "Bronze Dragon", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Cave_crawler"), name: "Cave Crawler", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Cave_horror"), name: "Cave Horror", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Cave_kraken"), name: "Cave Kraken", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Cave_slime"), name: "Cave Slime", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Cockatrice"), name: "Cockatrice", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Dagannoth"), name: "Dagannoth", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Dark_beast"), name: "Dark Beast", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Desert_lizard"), name: "Desert Lizard", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Dust_devil"), name: "Dust Devil", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Elf_warrior"), name: "Elves", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Fever_spider"), name: "Fever Spider", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Fire_giant"), name: "Fire Giant", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Ancient_Wyvern"), name: "Fossil Island Wyvern", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Gargoyle"), name: "Gargoyle", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Greater_demon"), name: "Greater Demon", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Harpie_Bug_Swarm"), name: "Harpie Bug Swarm", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Hellhound"), name: "Hellhound", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Infernal_Mage"), name: "Infernal Mage", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Iron_dragon"), name: "Iron Dragon", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Jelly"), name: "Jelly", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Jungle_horror"), name: "Jungle Horror", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Kalphite_Soldier"), name: "Kalphite", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Kurask"), name: "Kurask", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Lesser_demon"), name: "Lesser Demon", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Lizardman_shaman"), name: "Lizardmen", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Mithril_dragon"), name: "Mithril Dragon", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Mogre"), name: "Mogre", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Molanisk"), name: "Molanisk", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Nechryael"), name: "Nechryael", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Pyrefiend"), name: "Pyrefiend", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Red_dragon"), name: "Red Dragon", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Rockslug"), name: "Rockslug", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Locust_rider_(ranged)"), name: "Scabarites", assigningMasters: [MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Skeletal_Wyvern"), name: "Skeletal Wyvern", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Smoke_devil"), name: "Smoke Devil", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Spiritual_mage_(Zamorak)"), name: "Spiritual Creatures", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Steel_dragon"), name: "Steel Dragon", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Suqah"), name: "Suqah", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Mountain_troll"), name: "Troll", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "Turoth"), name: "Turoth", assigningMasters: MasterController.masters),
        Monster(image: #imageLiteral(resourceName: "TzTok-Jad"), name: "TzHaar", assigningMasters: [MasterController.masters[0], MasterController.masters[1]]),
        Monster(image: #imageLiteral(resourceName: "Wall_beast"), name: "Wall Beast", assigningMasters: [MasterController.masters[2]]),
        Monster(image: #imageLiteral(resourceName: "Waterfiend"), name: "Waterfiend", assigningMasters: [MasterController.masters[0]]),
        Monster(image: #imageLiteral(resourceName: "Zygomite"), name: "Zygomite", assigningMasters: MasterController.masters)
    ]
}
