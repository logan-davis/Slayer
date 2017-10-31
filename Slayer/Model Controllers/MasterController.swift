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
        let duradel = Master(name: "Duradel", image: #imageLiteral(resourceName: "final duradel"), examine: "He looks dangerous!", chatHead: #imageLiteral(resourceName: "duradel"))
        let nieve = Master(name: "Nieve", image: #imageLiteral(resourceName: "finalnieve"), examine: "She looks rich and dangerous!", chatHead: #imageLiteral(resourceName: "nieve"))
        let chaeldar = Master(name: "Chaeldar", image: #imageLiteral(resourceName: "finalchaeldar"), examine: "She looks dangerous!", chatHead: #imageLiteral(resourceName: "chaeldar"))
        let steve = Master(name: "Steve", image: #imageLiteral(resourceName: "finalsteve"), examine: "He doesn't look very dangerous.", chatHead: #imageLiteral(resourceName: "stevehead"))
        let mm2Key = "mm2Key\(PlayerController.shared.playerName.lowercased())"
        let unlockSteve = UserDefaults.standard.value(forKey: mm2Key) as! Bool
        if unlockSteve == true {
            return [duradel, steve, chaeldar]
        } else {
            return [duradel, nieve, chaeldar]
        }
    }
    
    static var currentlySelectedMaster: Master?
}
