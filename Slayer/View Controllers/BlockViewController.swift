//
//  BlockViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/18/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class BlockViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    static let shared = BlockViewController()
    
    @IBOutlet weak var mastersTableView: UITableView!
    
    var currentMasters: [Master] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        mastersTableView.delegate = self
        mastersTableView.dataSource = self
        mastersTableView.backgroundColor = .clear
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.mastersTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MasterCell", for: indexPath) as? MasterTableViewCell else { return UITableViewCell() }
        let master = MasterController.masters[indexPath.row]
        cell.backgroundColor = .clear
        cell.master = master
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBlockList" {
            guard let selectedIndex = self.mastersTableView.indexPathForSelectedRow?.row else { return }
            let master = MasterController.masters[selectedIndex]
            MasterController.currentlySelectedMaster = master
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
}
