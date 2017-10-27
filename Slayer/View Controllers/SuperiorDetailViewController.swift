//
//  SuperiorDetailViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/26/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class SuperiorDetailViewController: UIViewController {

    @IBOutlet weak var superiorImage: UIImageView!
    @IBOutlet weak var superiorName: UILabel!
    
    var currentSuperior: Superior?
    
    func updateViews() {
        let currentSuperior = SuperiorController.currentSuperior
        superiorImage.image = currentSuperior?.image
        superiorName.text = currentSuperior?.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.isTranslucent = true
        self.tabBarController?.tabBar.isHidden = true
        updateViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        updateViews()
    }
}
