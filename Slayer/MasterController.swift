//
//  MasterController.swift
//  Slayer
//
//  Created by Logan Davis on 10/19/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class MasterController {
    
    static var masters: [Master] {
        let duradel = Master(name: "Duradel", image: #imageLiteral(resourceName: "duradel"))
        let nieve = Master(name: "Nieve", image: #imageLiteral(resourceName: "nieve"))
        let chaeldar = Master(name: "Chaeldar", image: #imageLiteral(resourceName: "chaeldar"))
        
        return [duradel, nieve, chaeldar]
    }
}
