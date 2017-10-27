//
//  AllMonstersViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class AllMonstersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var monsterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monsterTableView.delegate = self
        monsterTableView.dataSource = self
        monsterTableView.backgroundColor = .clear
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.isTranslucent = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllMonsterController.allMonsters.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterCell", for: indexPath) as? MonsterTableViewCell else { return UITableViewCell() }
        let monster = AllMonsterController.allMonsters[indexPath.row]
        cell.backgroundColor = .clear
        cell.monster = monster
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMonsterDetail" {
            guard let selectedIndex = self.monsterTableView.indexPathForSelectedRow?.row else { return }
            let allMonster = AllMonsterController.allMonsters[selectedIndex]
            AllMonsterController.currentAllMonster = allMonster
        }
        let backItem = UIBarButtonItem()
        backItem.title = "Monsters"
        navigationItem.backBarButtonItem = backItem
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.navigationBar.isHidden = false
    }
}
