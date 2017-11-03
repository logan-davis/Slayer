//
//  AllMonster.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class AllMonster {
    
    let image: UIImage
    let name: String
    let assigningMasters: [Master]
    let level: Int
    let examine: String
    
    init(image: UIImage, name: String, assigningMasters: [Master], level: Int, examine: String) {
        
        self.image = image
        self.name = name
        self.assigningMasters = assigningMasters
        self.level = level
        self.examine = examine
    }
}
