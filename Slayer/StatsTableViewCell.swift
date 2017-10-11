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
                self.updateViews()
            }
        }
    }
    
    func updateViews() {
            
        self.combatLevelLabel.text = "N/A"
        self.attackLevelLabel.text = "\(player?.attack ?? 1)"
        self.strengthLevelLabel.text = "\(player?.strength ?? 1)"
        self.defenceLevelLabel.text = "\(player?.defence ?? 1)"
        self.hitpointsLevelLabel.text = "\(player?.constitution ?? 10)"
        self.slayerLevelLabel.text = "\(player?.slayer ?? 1)"
        self.magicLevelLabel.text = "\(player?.magic ?? 1)"
        self.prayerLevelLabel.text = "\(player?.prayer ?? 1)"
        self.rangeLevelLabel.text = "\(player?.range ?? 1)"
    }
}
