//
//  QuestsViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/24/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class QuestsViewController: UIViewController {

    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var monkeyMadness2Switch: UISwitch!
    
    @IBAction func mm2ValueChanged(_ sender: UISwitch) {
            PlayerController.shared.toggleQuestValues(monkeyMadness2: sender.isOn)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSwitchValues()
    }
    
    func setSwitchValues() {
        guard let player = PlayerController.shared.currentPlayer else { return }
        monkeyMadness2Switch.isOn = player.monkeyMadness2
    }
    
}
