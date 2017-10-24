//
//  MenuViewController.swift
//  Slayer
//
//  Created by Logan Davis on 9/20/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var RSNLabel: UILabel!
    @IBOutlet weak var statsTableView: UITableView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        RSNLabel.text = "\(PlayerController.shared.playerName)"
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "statsCell", for: indexPath) as? StatsTableViewCell else { return UITableViewCell() }
        guard let player = PlayerController.shared.currentPlayer else { return UITableViewCell() }
        cell.backgroundColor = UIColor.clear
        cell.contentView.backgroundColor = .clear
        cell.player = player
        return cell
    }
}
