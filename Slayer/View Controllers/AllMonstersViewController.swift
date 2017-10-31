//
//  AllMonstersViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class AllMonstersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UISearchDisplayDelegate {
    
    @IBOutlet weak var monsterSearchBar: UISearchBar!
    @IBOutlet weak var monsterTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monsterTableView.delegate = self
        monsterTableView.dataSource = self
        monsterTableView.backgroundColor = .clear
        monsterSearchBar.delegate = self
        self.monsterSearchBar.setBackgroundImage(UIImage(), for: .top, barMetrics: .default)
        self.monsterSearchBar.backgroundColor = .clear
        self.monsterSearchBar.isTranslucent = true
        self.monsterSearchBar.text = ""
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.isTranslucent = true
        self.tabBarController?.tabBar.isHidden = true
        isSearching = false
        monsterTableView.reloadData()
    }
    
    var monster: AllMonster?
    var filteredData = [AllMonster]()
    var isSearching = false
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if isSearching == true {
            return filteredData.count
        } else {
            
            return AllMonsterController.allMonsters.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterCell", for: indexPath) as? MonsterTableViewCell else { return UITableViewCell() }
        
        let monster: AllMonster
        
        if isSearching {
            monster = filteredData[indexPath.row]
        } else {
            monster = AllMonsterController.allMonsters[indexPath.row]
        }
        
        cell.backgroundColor = .clear
        cell.monster = monster
        return cell
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let username = "\(PlayerController.shared.playerName.lowercased())"
        if searchBar.text == "" || searchBar.text == nil {
            isSearching = false
            monsterTableView.reloadData()
        } else if searchBar.text?.lowercased() == "untrimmed" {
            isSearching = true
            filteredData = AllMonsterController.allMonsters.filter({$0.name.lowercased().range(of: searchBar.text!) != nil})
            let seventh = AllMonster(image: #imageLiteral(resourceName: "Slayer_cape_detail"), name: "Rip 7th", assigningMasters: MasterController.masters, level: 7)
            filteredData.append(seventh)
            monsterTableView.reloadData()
        } else if searchBar.text?.lowercased() == "black" {
            isSearching = true
            filteredData = AllMonsterController.allMonsters.filter({$0.name.range(of: searchBar.text!) != nil})
            let cmonBruh = AllMonster(image: #imageLiteral(resourceName: "cmonbruh"), name: "cmonBruh", assigningMasters: MasterController.masters, level: 10)
            filteredData.append(cmonBruh)
            monsterTableView.reloadData()
        } else if searchBar.text?.lowercased() == "\(username)" {
            isSearching = true
            filteredData = AllMonsterController.allMonsters.filter({$0.name.range(of: searchBar.text!) != nil})
            let noob = AllMonster(image: #imageLiteral(resourceName: "noob"), name: "\(PlayerController.shared.playerName)", assigningMasters: MasterController.masters, level: 69)
            filteredData.append(noob)
            monsterTableView.reloadData()
        } else if searchBar.text?.lowercased() == "gnome child" {
            isSearching = true
            filteredData = AllMonsterController.allMonsters.filter({$0.name.range(of: searchBar.text!) != nil})
            let gnomeGif = UIImage .animatedImageNamed("gnome-gif", duration: 1.0)
            let noob = AllMonster(image: gnomeGif!, name: "Gnome Child", assigningMasters: MasterController.masters, level: 69)
            filteredData.append(noob)
            monsterTableView.reloadData()
        } else if searchBar.text?.lowercased() == "charizard" {
            isSearching = true
            filteredData = AllMonsterController.allMonsters.filter({$0.name.range(of: searchBar.text!) != nil})
            let charizard = AllMonster(image: #imageLiteral(resourceName: "charizard"), name: "Charizard", assigningMasters: MasterController.masters, level: 80)
            filteredData.append(charizard)
            monsterTableView.reloadData()
        } else if searchBar.text?.lowercased() == "goldenrig" {
            isSearching = true
            filteredData = AllMonsterController.allMonsters.filter({$0.name.range(of: searchBar.text!) != nil})
            let goldRig = AllMonster(image: #imageLiteral(resourceName: "rig"), name: "Rigondeaux", assigningMasters: MasterController.masters, level: 69)
            filteredData.append(goldRig)
            monsterTableView.reloadData()
        } else {
            isSearching = true
            filteredData = AllMonsterController.allMonsters.filter({$0.name.lowercased().range(of: searchBar.text!.lowercased()) != nil})
            monsterTableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var clickedMonster: AllMonster
        if segue.identifier == "toMonsterDetail" {
            guard let selectedIndex = self.monsterTableView.indexPathForSelectedRow?.row,
                let detailVC = segue.destination as? MonsterDetailViewController
                else { return }
            if isSearching == true {
                clickedMonster = self.filteredData[selectedIndex]
            } else {
                clickedMonster = AllMonsterController.allMonsters[selectedIndex]
            }
            detailVC.currentMonster = clickedMonster
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
