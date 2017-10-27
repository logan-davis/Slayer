//
//  MonsterTableViewCell.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class MonsterTableViewCell: UITableViewCell {

    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var monsterNameLabel: UILabel!
    
    var monster: AllMonster? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let monster = monster else { return }
        monsterImage.image = monster.image
        monsterNameLabel.text = monster.name
    }
}
