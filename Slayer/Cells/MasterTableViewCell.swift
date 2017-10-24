//
//  MasterTableViewCell.swift
//  Slayer
//
//  Created by Logan Davis on 10/19/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {

    @IBOutlet weak var masterImage: UIImageView!
    @IBOutlet weak var masterNameLabel: UILabel!
    
    var master: Master? {
        didSet {
            updateViews()
        }
    }

    func updateViews() {
        guard let master = master else { return }
        masterImage.image = master.image
        masterNameLabel.text = master.name
    }
}
