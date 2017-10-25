//
//  InformationViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/24/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {
    @IBAction func logOutButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
}
