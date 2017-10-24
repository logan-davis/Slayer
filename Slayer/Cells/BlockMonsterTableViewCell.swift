//
//  BlockMonsterTableViewCell.swift
//  Slayer
//
//  Created by Logan Davis on 10/19/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class BlockMonsterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MonsterImage: UIImageView!
    @IBOutlet weak var MonsterNameLabel: UILabel!
    @IBOutlet weak var StateLabel: UILabel!
    
    var monster: Monster? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let monster = monster else { return }
        MonsterImage.image = monster.image
        MonsterNameLabel.text = monster.name
        let state = sweetBabyLogic()
        StateLabel.text = state
        if state == "Do" {
            StateLabel.textColor = UIColor.green
            StateLabel.shadowColor = UIColor.black
            StateLabel.shadowOffset = CGSize.init(width: 1, height: 1)
        } else if state == "Block" {
            StateLabel.textColor = UIColor.red
            StateLabel.shadowColor = UIColor.black
            StateLabel.shadowOffset = CGSize.init(width: 1, height: 1)
        } else if state == "Skip" {
            StateLabel.textColor = UIColor.white
            StateLabel.shadowColor = UIColor.black
            StateLabel.shadowOffset = CGSize.init(width: 1, height: 1)
        }
    }
    
    func sweetBabyLogic() -> String {
        let slayer = (PlayerController.shared.currentPlayer?.slayer)!
        let name = monster?.name
        guard let masterName = MasterController.currentlySelectedMaster?.name else { return "" }
        
        // MARK: Nieve/Steve/Duradel
        
        if slayer > 0 && slayer < 87 && masterName == "Nieve" || masterName == "Steve" || masterName == "Duradel" {
            if name == "Fossil Island Wyvern" || name == "Hellhound" || name == "Greater Demon" || name == "Black Demon" || name == "Spiritual Creatures" {
                return "Block"
            } else if name == "Aberrant Spectre" || name == "Blue Dragon" || name == "Brine Rat" || name == "Cave Horror" || name == "Elves" || name == "Fire Giant" || name == "Iron Dragon" || name == "Scabarites" || name == "Skeletal Wyvern" || name == "Steel Dragon" || name == "Turoth" || name == "Zygomite" {
                return "Skip"
            } else {
                return "Do" }
        } else if slayer > 86 && slayer < 91 {
            if name == "Fossil Island Wyvern" || name == "Hellhound" || name == "Cave Kraken" || name == "Black Demon" || name == "Spiritual Creatures" {
                return "Block"
            } else if name == "Aberrant Spectre" || name == "Blue Dragon" || name == "Brine Rat" || name == "Cave Horror" || name == "Elves" || name == "Fire Giant" || name == "Iron Dragon" || name == "Scabarites" || name == "Skeletal Wyvern" || name == "Steel Dragon" || name == "Turoth" || name == "Zygomite" || name == "Greater Demon" {
                return "Skip"
            } else {
                return "Do" }
        } else if slayer > 90 {
            if name == "Fossil Island Wyvern" || name == "Greater Demon" || name == "Cave Kraken" || name == "Black Demon" || name == "Spiritual Creatures" {
                return "Block"
            } else if name == "Aberrant Spectre" || name == "Blue Dragon" || name == "Brine Rat" || name == "Cave Horror" || name == "Elves" || name == "Fire Giant" || name == "Iron Dragon" || name == "Scabarites" || name == "Skeletal Wyvern" || name == "Steel Dragon" || name == "Turoth" || name == "Zygomite" {
                return "Skip"
            } else {
                return "Do" }
            
            // MARK: Chaeldar
            
        } else if slayer > 0 && slayer < 57 && masterName == "Chaeldar" {
            if name == "Iron Dragon" || name == "Steel Dragon" || name == "Greater Demon" || name == "Black Demon" || name == "Desert Lizard" {
                return "Block"
            } else if name == "Bronze Dragon" || name == "Jungle Horror" || name == "Cave Horror" || name == "Lizardmen" || name == "Blue Dragon" || name == "Cave Kraken" || name == "Fever Spider" || name == "Kurask" || name == "Aberrant Spectre" || name == "Infernal Mage" {
                return "Skip"
            } else {
                return "Do" }
        } else if slayer > 56 && slayer < 63 {
            if name == "Iron Dragon" || name == "Steel Dragon" || name == "Greater Demon" || name == "Black Demon" || name == "Zygomite" {
                return "Block"
            } else if name == "Bronze Dragon" || name == "Desert Lizard" || name == "Jungle Horror" || name == "Cave Horror" || name == "Lizardmen" || name == "Blue Dragon" || name == "Cave Kraken" || name == "Fever Spider" || name == "Kurask" || name == "Aberrant Spectre" || name == "Infernal Mage" {
                return "Skip"
            } else {
                return "Do" }
        } else if slayer > 62 && slayer < 66 {
            if name == "Iron Dragon" || name == "Steel Dragon" || name == "Greater Demon" || name == "Black Demon" || name == "Spiritual Creatures" {
                return "Block"
            } else if name == "Bronze Dragon" || name == "Desert Lizard" || name == "Jungle Horror" || name == "Cave Horror" || name == "Lizardmen" || name == "Blue Dragon" || name == "Cave Kraken" || name == "Fever Spider" || name == "Kurask" || name == "Aberrant Spectre" || name == "Infernal Mage" || name == "Zygomite" {
                return "Skip"
            } else {
                return "Do" }
        } else if slayer > 65 {
            if name == "Iron Dragon" || name == "Steel Dragon" || name == "Fossil Island Wyvern" || name == "Black Demon" || name == "Spiritual Creatures" {
                return "Block"
            } else if name == "Bronze Dragon" || name == "Desert Lizard" || name == "Jungle Horror" || name == "Cave Horror" || name == "Lizardmen" || name == "Blue Dragon" || name == "Cave Kraken" || name == "Fever Spider" || name == "Kurask" || name == "Aberrant Spectre" || name == "Infernal Mage" || name == "Zygomite" || name == "Greater Demon" {
                return "Skip"
            } else {
                return "Do" }
        }
        return ""
    }
}
