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
    let reqs: UIImage
    let points: UIImage
    let location: UIImage
    let weights: UIImage
    
    init(name: String, image: UIImage, examine: String, chatHead: UIImage, reqs: UIImage, points: UIImage, location: UIImage, weights: UIImage) {
        
        self.name = name
        self.image = image
        self.examine = examine
        self.chatHead = chatHead
        self.reqs = reqs
        self.points = points
        self.location = location
        self.weights = weights
    }
}
