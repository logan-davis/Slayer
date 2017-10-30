//
//  DuradelViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/18/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class DuradelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var blockTableView: UITableView!
    
    func updateWithMaster(_ master: Master) {
        title = "\(master.name)'s Task List"
    }
    
    var currentMastersMonsters: [Monster] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blockTableView.delegate = self
        blockTableView.dataSource = self
        blockTableView.backgroundColor = .clear
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.isTranslucent = true
        self.tabBarController?.tabBar.isHidden = true
        currentMastersMonsters = filterMonstersToInclude()
        if let master = MasterController.currentlySelectedMaster {
            updateWithMaster(master)
        }
        self.blockTableView.reloadData()
        self.blockTableView.reloadInputViews()
        BlockMonsterTableViewCell.shared.updateViews()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentMastersMonsters.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BlockMonsterCell", for: indexPath) as? BlockMonsterTableViewCell else { return UITableViewCell() }
        let monster = currentMastersMonsters[indexPath.row]
        cell.backgroundColor = .clear
        cell.monster = monster
        return cell
    }
    
    func filterMonstersToInclude() -> [Monster] {
        guard let currentMaster = MasterController.currentlySelectedMaster else { return [] }
        var monstersToInclude = [Monster]()
        for monster in MonsterController.shared.monsters {
            let masterNames = monster.assigningMasters.map( { $0.name})
            if masterNames.contains(currentMaster.name) {
                let monsterLevel = (monster.level)
                guard let slayerLevel = PlayerController.shared.currentPlayer?.slayer else { return [] }
                if slayerLevel >= monsterLevel {
                    monstersToInclude.append(monster)
                }
            }
        }
        let sortedMonsters = monstersToInclude.sorted { (Monster1, Monster2) -> Bool in
            return Monster1.name.compare(Monster2.name) == ComparisonResult.orderedAscending
        }
        return sortedMonsters
    }
}
