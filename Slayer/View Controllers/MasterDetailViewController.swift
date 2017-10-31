//
//  MasterDetailViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/31/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class MasterDetailViewController: UIViewController {

    @IBOutlet weak var masterImage: UIImageView!
    @IBOutlet weak var masterNameLabel: UILabel!
    @IBOutlet weak var masterExamineLabel: UILabel!
    
    var clickedMaster: Master?
    
    func updateViews() {
        guard let clickedMaster = clickedMaster else { return }
        masterImage.image = clickedMaster.chatHead
        masterNameLabel.text = clickedMaster.name
        masterExamineLabel.text = clickedMaster.examine
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
