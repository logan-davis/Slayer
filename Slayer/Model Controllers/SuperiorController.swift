//
//  SuperiorController.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class SuperiorController {
    
    static let shared = SuperiorController()
    
    static var superiors: [Superior] {
        
        let superiors = [
            Superior(image: #imageLiteral(resourceName: "Chasm_Crawler"), name: "Chasm Crawler", level: 68, xp: 600),
            Superior(image: #imageLiteral(resourceName: "Screaming_banshee"), name: "Screaming Banshee", level: 70, xp: 610),
            Superior(image: #imageLiteral(resourceName: "Giant_rockslug"), name: "Giant Rockslug", level: 86, xp: 770),
            Superior(image: #imageLiteral(resourceName: "Cockathrice"), name: "Cockathrice", level: 89, xp: 950),
            Superior(image: #imageLiteral(resourceName: "Flaming_pyrelord"), name: "Flaming Pyrelord", level: 97, xp: 1250),
            Superior(image: #imageLiteral(resourceName: "Monstrous_basilisk"), name: "Monstrous Basilisk", level: 135, xp: 1700),
            Superior(image: #imageLiteral(resourceName: "Malevolent_Mage"), name: "Malevolent Mage", level: 162, xp: 1750),
            Superior(image: #imageLiteral(resourceName: "Insatiable_Bloodveld"), name: "Insatiable Bloodveld", level: 202, xp: 2900),
            Superior(image: #imageLiteral(resourceName: "Insatiable_mutated_Bloodveld"), name: "Insatiable Mutated Bloodveld", level: 278, xp: 4100),
            Superior(image: #imageLiteral(resourceName: "Vitreous_Jelly"), name: "Vitreous Jelly", level: 206, xp: 1900),
            Superior(image: #imageLiteral(resourceName: "Cave_abomination"), name: "Cave Abomination", level: 206, xp: 1300),
            Superior(image: #imageLiteral(resourceName: "Abhorrent_spectre"), name: "Abhorrent Spectre", level: 253, xp: 2500),
            Superior(image: #imageLiteral(resourceName: "Repugnant_spectre"), name: "Repugnant Spectre", level: 335, xp: 4085),
            Superior(image: #imageLiteral(resourceName: "Choke_devil"), name: "Choke Devil", level: 264, xp: 3000),
            Superior(image: #imageLiteral(resourceName: "King_kurask"), name: "King Kurask", level: 295, xp: 2767),
            Superior(image: #imageLiteral(resourceName: "Marble_gargoyle"), name: "Marble Gargoyle", level: 349, xp: 3044),
            Superior(image: #imageLiteral(resourceName: "Nechryarch"), name: "Nechryarch", level: 300, xp: 3068),
            Superior(image: #imageLiteral(resourceName: "Greater_abyssal_demon"), name: "Greater Abyssal Demon", level: 242, xp: 4200),
            Superior(image: #imageLiteral(resourceName: "Night_beast"), name: "Night Beast", level: 314, xp: 6462),
            Superior(image: #imageLiteral(resourceName: "Nuclear_smoke_devil"), name: "Nuclear Smoke Devil", level: 280, xp: 2400)
        ]
        return superiors
    }
    
    static var currentSuperior: Superior?
}
