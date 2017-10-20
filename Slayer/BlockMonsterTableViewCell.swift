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
        StateLabel.text = ""
    }
}
