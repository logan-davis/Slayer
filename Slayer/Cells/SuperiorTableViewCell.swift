//
//  SuperiorTableViewCell.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class SuperiorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var superiorImage: UIImageView!
    @IBOutlet weak var superiorName: UILabel!
    
    var superior: Superior? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let superior = superior else { return }
        superiorImage.image = superior.image
        superiorName.text = superior.name
    }
}
