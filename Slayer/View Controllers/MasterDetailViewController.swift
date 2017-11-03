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
    @IBOutlet weak var masterReqs: UIImageView!
    @IBOutlet weak var masterPoints: UIImageView!
    @IBOutlet weak var masterLocation: UIImageView!
    @IBOutlet weak var masterWeights: UIImageView!
    
    var clickedMaster: Master?
    
    func updateViews() {
        guard let clickedMaster = clickedMaster else { return }
        masterImage.image = clickedMaster.chatHead
        masterNameLabel.text = clickedMaster.name
        masterExamineLabel.text = clickedMaster.examine
        masterReqs.image = clickedMaster.reqs
        masterPoints.image = clickedMaster.points
        masterLocation.image = clickedMaster.location
        masterWeights.image = clickedMaster.weights
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
