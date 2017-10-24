//
//  StatsTableViewCell.swift
//  Slayer
//
//  Created by Logan Davis on 10/11/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class StatsTableViewCell: UITableViewCell {

    @IBOutlet weak var combatLevelLabel: UILabel!
    @IBOutlet weak var attackLevelLabel: UILabel!
    @IBOutlet weak var strengthLevelLabel: UILabel!
    @IBOutlet weak var defenceLevelLabel: UILabel!
    @IBOutlet weak var hitpointsLevelLabel: UILabel!
    @IBOutlet weak var rangeLevelLabel: UILabel!
    @IBOutlet weak var prayerLevelLabel: UILabel!
    @IBOutlet weak var magicLevelLabel: UILabel!
    @IBOutlet weak var slayerLevelLabel: UILabel!
    
    var player: Player? {

        didSet {
            DispatchQueue.main.async {
            }
            self.updateViews()
        }
    }

    func updateViews() {
        
        self.combatLevelLabel.text = "\(calculateCombatLevel() ?? 3)"
        self.attackLevelLabel.text = "\(player?.attack ?? 1)"
        self.strengthLevelLabel.text = "\(player?.strength ?? 1)"
        self.defenceLevelLabel.text = "\(player?.defence ?? 1)"
        self.hitpointsLevelLabel.text = "\(player?.constitution ?? 10)"
        self.slayerLevelLabel.text = "\(player?.slayer ?? 1)"
        self.magicLevelLabel.text = "\(player?.magic ?? 1)"
        self.prayerLevelLabel.text = "\(player?.prayer ?? 1)"
        self.rangeLevelLabel.text = "\(player?.range ?? 1)"
    }
    
    func calculateCombatLevel() -> Int? {
        let prayerLevel = Double((player?.prayer)!/2)
        let rangedLevel = Double((player?.range)!/2)
        let magicLevel = Double((player?.magic)!/2)
        let floorPrayer = floor(prayerLevel)
        let floorRanged = floor(rangedLevel)
        let floorMagic = floor(magicLevel)
        let defenceLevel = Double((player?.defence)!)
        let hpLevel = Double((player?.constitution)!)
        let strengthLevel = Double((player?.strength)!)
        let attackLevel = Double((player?.attack)!)
        let normalRanged = Double((player?.range)!)
        let normalMagic = Double((player?.magic)!)
        let base = 0.25 * (defenceLevel + hpLevel + floorPrayer)
        let melee = 0.325 * (attackLevel + strengthLevel)
        let range = 0.325 * (floorRanged + normalRanged)
        let mage = 0.325 * (floorMagic + normalMagic)
        let meleeCombat = Int(floor(base + melee))
        let rangeCombat = Int(floor(base + range))
        let mageCombat = Int(floor(base + mage))
        let combats = [meleeCombat, rangeCombat, mageCombat]
        let combatLevel = combats.max()
        return combatLevel
    }
}
