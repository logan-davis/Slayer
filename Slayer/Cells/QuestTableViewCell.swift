//
//  QuestTableViewCell.swift
//  Slayer
//
//  Created by Logan Davis on 10/24/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class QuestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cabinFeverSwitch: UISwitch!
    @IBAction func cabinFeverValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleCabinFever(cabinFever: sender.isOn)
    }
    
    @IBOutlet weak var deathToTheDorgeshuunSwitch: UISwitch!
    @IBAction func deathToTheDorgeshuunValueChanged(_ sender: UISwitch) {
        
    }
    
    @IBOutlet weak var desertTreasureSwitch: UISwitch!
    @IBAction func desertTreasureValueChanged(_ sender: UISwitch) {
        
    }
    
    @IBOutlet weak var horrorFromTheDeepSwitch: UISwitch!
    @IBAction func horrorFromTheDeepValueChanged(_ sender: UISwitch) {
        
    }
    
    @IBOutlet weak var lunarDiplomacySwitch: UISwitch!
    @IBAction func lunarDiplomacyValueChanged(_ sender: UISwitch) {
        
    }
    
    @IBOutlet weak var monkeyMadness2Switch: UISwitch!
    @IBAction func monkeyMadness2ValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleMonkeyMadness(monkeyMadness2: sender.isOn)
    }
    
    @IBOutlet weak var mourningsEndPart2Switch: UISwitch!
    @IBAction func mourningsEndPart2ValueChanged(_ sender: UISwitch) {
        
    }
    
    @IBOutlet weak var olafsQuestSwitch: UISwitch!
    @IBAction func olafsQuestValueChanged(_ sender: UISwitch) {
        
    }
    
    @IBOutlet weak var priestInPerilSwitch: UISwitch!
    @IBAction func priestInPerilValueChanged(_ sender: UISwitch) {
        
    }
    
    @IBOutlet weak var rumDealSwitch: UISwitch!
    @IBAction func rumDealValueChanged(_ sender: UISwitch) {
        
    }
    
    var player: Player? {
        didSet {
            self.updateViews()
        }
    }
    
    func updateViews() {
        setSwitchValues()
    }
    
    func setSwitchValues() {
        guard let player = PlayerController.shared.currentPlayer else { return }
        cabinFeverSwitch.isOn = player.cabinFever
        deathToTheDorgeshuunSwitch.isOn = player.deathToTheDorgeshuun
        desertTreasureSwitch.isOn = player.desertTreasure
        horrorFromTheDeepSwitch.isOn = player.horrorFromTheDeep
        lunarDiplomacySwitch.isOn = player.lunarDiplomacy
        monkeyMadness2Switch.isOn = player.monkeyMadness2
        mourningsEndPart2Switch.isOn = player.mourningsEndPart2
        olafsQuestSwitch.isOn = player.olafsQuest
        priestInPerilSwitch.isOn = player.priestInPeril
        rumDealSwitch.isOn = player.rumDeal

    }
}
