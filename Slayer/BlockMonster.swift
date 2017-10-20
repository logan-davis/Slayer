//
//  BlockMonster.swift
//  Slayer
//
//  Created by Logan Davis on 10/18/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class Monster {
    
    let image: UIImage
    let name: String
    let assigningMasters: [Master]
    
    init(image: UIImage, name: String, assigningMasters: [Master]) {
        
        self.image = image
        self.name = name
        self.assigningMasters = assigningMasters
    }
}
