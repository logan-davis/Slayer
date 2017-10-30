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
    
    init(image: UIImage, name: String, assigningMasters: [Master], level: Int) {
        
        self.image = image
        self.name = name
        self.assigningMasters = assigningMasters
        self.level = level
    }
}