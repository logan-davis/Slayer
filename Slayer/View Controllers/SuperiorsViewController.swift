//
//  SuperiorsViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/25/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class SuperiorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var superiorsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        superiorsTableView.delegate = self
        superiorsTableView.dataSource = self
        superiorsTableView.backgroundColor = .clear
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.isTranslucent = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SuperiorController.superiors.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SuperiorCell", for: indexPath) as? SuperiorTableViewCell else { return UITableViewCell() }
        let superior = SuperiorController.superiors[indexPath.row]
        cell.backgroundColor = .clear
        cell.superior = superior
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSuperiorDetail" {
            guard let selectedIndex = self.superiorsTableView.indexPathForSelectedRow?.row else { return }
            let superior = SuperiorController.superiors[selectedIndex]
            SuperiorController.currentSuperior = superior
        }
        let backItem = UIBarButtonItem()
        backItem.title = "Superiors"
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
