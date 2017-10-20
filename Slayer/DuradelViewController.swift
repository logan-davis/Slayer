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
    
    var masterToInclude: String = "Duradel"
    
    var currentMastersMonsters: [Monster] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blockTableView.delegate = self
        blockTableView.dataSource = self
        blockTableView.backgroundColor = .clear
        self.navigationController?.navigationBar.isHidden = false
        
        currentMastersMonsters = filterMonstersToInclude()
        
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
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func filterMonstersToInclude() -> [Monster] {
        var monstersToInclude = [Monster]()
        for monster in MonsterController.monsters {
            let monsterNames = monster.assigningMasters.map( { $0.name})
            if monsterNames.contains(masterToInclude) {
                monstersToInclude.append(monster)
            }
        }
        return monstersToInclude
    }
}

