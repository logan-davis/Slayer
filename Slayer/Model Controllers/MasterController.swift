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
        let duradel = Master(name: "Duradel", image: #imageLiteral(resourceName: "final duradel"), examine: "He looks dangerous!", chatHead: #imageLiteral(resourceName: "duradel"), reqs: #imageLiteral(resourceName: "finalduradelreq"), points: #imageLiteral(resourceName: "newdurapoints"), location: #imageLiteral(resourceName: "newduraloc"), weights: #imageLiteral(resourceName: "duracolumn"))
        let nieve = Master(name: "Nieve", image: #imageLiteral(resourceName: "finalnieve"), examine: "She looks rich and dangerous!", chatHead: #imageLiteral(resourceName: "nieve"), reqs: #imageLiteral(resourceName: "nievereqs"), points: #imageLiteral(resourceName: "newnievepoints"), location: #imageLiteral(resourceName: "newnieveloc"), weights: #imageLiteral(resourceName: "newnieveweight"))
        let chaeldar = Master(name: "Chaeldar", image: #imageLiteral(resourceName: "finalchaeldar"), examine: "She looks dangerous!", chatHead: #imageLiteral(resourceName: "chaeldar"), reqs: #imageLiteral(resourceName: "chaeldarreqs"), points: #imageLiteral(resourceName: "newchaeldarpoints"), location: #imageLiteral(resourceName: "newchaeldarloc"), weights: #imageLiteral(resourceName: "newchaelweight"))
        let steve = Master(name: "Steve", image: #imageLiteral(resourceName: "finalsteve"), examine: "He doesn't look very dangerous.", chatHead: #imageLiteral(resourceName: "stevehead"), reqs: #imageLiteral(resourceName: "nievereqs"), points: #imageLiteral(resourceName: "newnievepoints"), location: #imageLiteral(resourceName: "newnieveloc"), weights: #imageLiteral(resourceName: "newnieveweight"))
        let nieveDiary = Master(name: "Nieve", image: #imageLiteral(resourceName: "finalnieve"), examine: "She looks rich and dangerous!", chatHead: #imageLiteral(resourceName: "nieve"), reqs: #imageLiteral(resourceName: "nievereqs"), points: #imageLiteral(resourceName: "newdurapoints"), location: #imageLiteral(resourceName: "newnieveloc"), weights: #imageLiteral(resourceName: "newnieveweight"))
        let steveDiary = Master(name: "Steve", image: #imageLiteral(resourceName: "finalsteve"), examine: "He doesn't look very dangerous.", chatHead: #imageLiteral(resourceName: "stevehead"), reqs: #imageLiteral(resourceName: "nievereqs"), points: #imageLiteral(resourceName: "newdurapoints"), location: #imageLiteral(resourceName: "newnieveloc"), weights: #imageLiteral(resourceName: "newnieveweight"))
        let mm2Key = "mm2Key\(PlayerController.shared.playerName.lowercased())"
        let westernDiaryKey = "westernDiaryKey\(PlayerController.shared.playerName.lowercased())"
        let unlockSteve = UserDefaults.standard.value(forKey: mm2Key) as! Bool
        let unlockDiary = UserDefaults.standard.value(forKey: westernDiaryKey) as! Bool
        if unlockSteve == true && unlockDiary == false{
            return [duradel, steve, chaeldar]
        } else if unlockSteve == false && unlockDiary == false {
            return [duradel, nieve, chaeldar]
        } else if unlockSteve == true && unlockDiary == true {
            return [duradel, steveDiary, chaeldar]
        } else if unlockSteve == false && unlockDiary == true {
            return [duradel, nieveDiary, chaeldar]
        } else {
            return []
        }
    }
    
    static var currentlySelectedMaster: Master?
}
