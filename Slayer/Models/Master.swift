//
//  Master.swift
//  Slayer
//
//  Created by Logan Davis on 10/19/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class Master {
    let name: String
    let image: UIImage
    let examine: String
    let chatHead: UIImage
    
    init(name: String, image: UIImage, examine: String, chatHead: UIImage) {
        
        self.name = name
        self.image = image
        self.examine = examine
        self.chatHead = chatHead
    }
}
