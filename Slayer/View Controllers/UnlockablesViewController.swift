//
//  UnlockablesViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class UnlockablesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var unlockTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        unlockTableView.delegate = self
        unlockTableView.dataSource = self
        unlockTableView.backgroundColor = .clear
        self.unlockTableView.reloadData()
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.isTranslucent = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "unlockCell", for: indexPath) as? UnlockTableViewCell else { return UITableViewCell() }
        guard let player = PlayerController.shared.currentPlayer else { return UITableViewCell() }
        cell.backgroundColor = .clear
        cell.contentView.backgroundColor = .clear
        cell.player = player
        return cell
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        self.unlockTableView.reloadData()
        self.navigationController?.navigationBar.isHidden = false
    }


}
