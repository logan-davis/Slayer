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
    }
}
