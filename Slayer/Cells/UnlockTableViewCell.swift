//
//  UnlockTableViewCell.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class UnlockTableViewCell: UITableViewCell {

    @IBOutlet weak var aviansiesLabel: UILabel!
    @IBOutlet weak var bossLabel: UILabel!
    @IBOutlet weak var lizardmenLabel: UILabel!
    @IBOutlet weak var mithrilLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var tzhaarLabel: UILabel!
    @IBOutlet weak var block1Label: UILabel!
    @IBOutlet weak var block2Label: UILabel!
    @IBOutlet weak var block3Label: UILabel!
    @IBOutlet weak var block4Label: UILabel!
    @IBOutlet weak var block5Label: UILabel!
    @IBOutlet weak var block6Label: UILabel!
    
    @IBOutlet weak var aviansiesSwitch: UISwitch!
    @IBAction func aviansiesValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleAviansies(aviansies: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var bossSwitch: UISwitch!
    @IBAction func bossValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleBoss(boss: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var lizardmenSwitch: UISwitch!
    @IBAction func lizardmenValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleLizardmen(lizardmen: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var mithrilSwitch: UISwitch!
    @IBAction func mithrilValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleMithril(mithril: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var redSwitch: UISwitch!
    @IBAction func redValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleRed(red: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var tzhaarSwitch: UISwitch!
    @IBAction func tzhaarValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleTzHaar(tzhaar: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var block1Switch: UISwitch!
    @IBAction func block1ValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleBlock1(block1: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var block2Switch: UISwitch!
    @IBAction func block2ValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleBlock2(block2: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var block3Switch: UISwitch!
    @IBAction func block3ValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleBlock3(block3: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var block4Switch: UISwitch!
    @IBAction func block4ValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleBlock4(block4: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var block5Switch: UISwitch!
    @IBAction func block5ValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleBlock5(block5: sender.isOn)
        updateViews()
    }
    @IBOutlet weak var block6Switch: UISwitch!
    @IBAction func block6ValueChanged(_ sender: UISwitch) {
        PlayerController.shared.toggleBlock6(block6: sender.isOn)
        updateViews()
    }
    
    var player: Player? {
        didSet {
            self.updateViews()
        }
    }
    
    func updateViews() {
        setSwitchValues()
        setTextColor()
    }
    
    func setSwitchValues() {
        guard let player = PlayerController.shared.currentPlayer else { return }
        aviansiesSwitch.isOn = player.unlockAviansie
        bossSwitch.isOn = player.unlockBoss
        lizardmenSwitch.isOn = player.unlockLizardmen
        mithrilSwitch.isOn = player.unlockMithrilDragon
        redSwitch.isOn = player.unlockRedDragon
        tzhaarSwitch.isOn = player.unlockTzHaar
        block1Switch.isOn = player.block1
        block2Switch.isOn = player.block2
        block3Switch.isOn = player.block3
        block4Switch.isOn = player.block4
        block5Switch.isOn = player.block5
        block6Switch.isOn = player.block6
    }
    
    func setTextColor() {
        if aviansiesSwitch.isOn == true {
            aviansiesLabel.textColor = .green
        } else { aviansiesLabel.textColor = .yellow }
        
        if bossSwitch.isOn == true {
            bossLabel.textColor = .green
        } else { bossLabel.textColor = .yellow }
        
        if lizardmenSwitch.isOn == true {
            lizardmenLabel.textColor = .green
        } else { lizardmenLabel.textColor = .yellow }
        
        if mithrilSwitch.isOn == true {
            mithrilLabel.textColor = .green
        } else { mithrilLabel.textColor = .yellow }
        
        if redSwitch.isOn == true {
            redLabel.textColor = .green
        } else { redLabel.textColor = .yellow }
        
        if tzhaarSwitch.isOn == true {
            tzhaarLabel.textColor = .green
        } else { tzhaarLabel.textColor = .yellow }
        
        if block1Switch.isOn == true {
            block1Label.textColor = .white
        } else { block1Label.textColor = UIColor.init(red: 255/255.0, green: 45/255.0, blue: 0/255.0, alpha: 1) }
        
        if block2Switch.isOn == true {
            block2Label.textColor = .white
        } else { block2Label.textColor = UIColor.init(red: 255/255.0, green: 45/255.0, blue: 0/255.0, alpha: 1) }
        
        if block3Switch.isOn == true {
            block3Label.textColor = .white
        } else { block3Label.textColor = UIColor.init(red: 255/255.0, green: 45/255.0, blue: 0/255.0, alpha: 1) }
        
        if block4Switch.isOn == true {
            block4Label.textColor = .white
        } else { block4Label.textColor = UIColor.init(red: 255/255.0, green: 45/255.0, blue: 0/255.0, alpha: 1) }
        
        if block5Switch.isOn == true {
            block5Label.textColor = .white
        } else { block5Label.textColor = UIColor.init(red: 255/255.0, green: 45/255.0, blue: 0/255.0, alpha: 1) }
        
        if block6Switch.isOn == true {
            block6Label.textColor = .white
        } else { block6Label.textColor = UIColor.init(red: 255/255.0, green: 45/255.0, blue: 0/255.0, alpha: 1) }
    }
}
