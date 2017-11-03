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
    @IBOutlet weak var diaryLabel: UILabel!
    
    let defaults = UserDefaults.standard
    let aviansieKey = "aviansieKey\(PlayerController.shared.playerName.lowercased())"
    let bossKey = "bossKey\(PlayerController.shared.playerName.lowercased())"
    let lizardmenKey = "lizardmenKey\(PlayerController.shared.playerName.lowercased())"
    let mithrilKey = "mithrilKey\(PlayerController.shared.playerName.lowercased())"
    let redKey = "redKey\(PlayerController.shared.playerName.lowercased())"
    let tzhaarKey = "tzhaarKey\(PlayerController.shared.playerName.lowercased())"
    let westernDiaryKey = "westernDiaryKey\(PlayerController.shared.playerName.lowercased())"
    
    @IBOutlet weak var aviansiesSwitch: UISwitch!
    @IBAction func aviansiesValueChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: aviansieKey)
        updateViews()
    }
    @IBOutlet weak var bossSwitch: UISwitch!
    @IBAction func bossValueChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: bossKey)
        updateViews()
    }
    @IBOutlet weak var lizardmenSwitch: UISwitch!
    @IBAction func lizardmenValueChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: lizardmenKey)
        updateViews()
    }
    @IBOutlet weak var mithrilSwitch: UISwitch!
    @IBAction func mithrilValueChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: mithrilKey)
        updateViews()
    }
    @IBOutlet weak var redSwitch: UISwitch!
    @IBAction func redValueChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: redKey)
        updateViews()
    }
    @IBOutlet weak var tzhaarSwitch: UISwitch!
    @IBAction func tzhaarValueChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: tzhaarKey)
        updateViews()
    }
    
    @IBOutlet weak var diarySwitch: UISwitch!
    @IBAction func diaryValueChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: westernDiaryKey)
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
        if let setAviansie = defaults.value(forKey: aviansieKey) {
            aviansiesSwitch.isOn = setAviansie as! Bool
        }
        if let setBoss = defaults.value(forKey: bossKey) {
            bossSwitch.isOn = setBoss as! Bool
        }
        if let setLizardmen = defaults.value(forKey: lizardmenKey) {
            lizardmenSwitch.isOn = setLizardmen as! Bool
        }
        if let setMithrils = defaults.value(forKey: mithrilKey) {
            mithrilSwitch.isOn = setMithrils as! Bool
        }
        if let setReds = defaults.value(forKey: redKey) {
            redSwitch.isOn = setReds as! Bool
        }
        if let setTzhaar = defaults.value(forKey: tzhaarKey) {
            tzhaarSwitch.isOn = setTzhaar as! Bool
        }
        if let setDiary = defaults.value(forKey: westernDiaryKey) {
            diarySwitch.isOn = setDiary as! Bool
        }

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
        
        if diarySwitch.isOn == true {
            diaryLabel.textColor = .green
        } else { diaryLabel.textColor = .yellow }
    }
}
