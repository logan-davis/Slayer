//
//  WelcomeViewController.swift
//  Slayer
//
//  Created by Logan Davis on 9/20/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var RSNTextField: UITextField!
    @IBAction func clickHereButtonClicked(_ sender: Any) {
        guard let player = RSNTextField.text else { return }
        PlayerController.shared.playerName = player
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
