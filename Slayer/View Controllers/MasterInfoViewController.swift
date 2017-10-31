//
//  MasterInfoViewController.swift
//  Slayer
//
//  Created by Logan Davis on 10/31/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class MasterInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var masterInfoTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.backgroundColor = .clear
        self.navigationController?.navigationBar.isTranslucent = true
        masterInfoTable.delegate = self
        masterInfoTable.dataSource = self
        masterInfoTable.backgroundColor = .clear
        masterInfoTable.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
        self.masterInfoTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MasterCell", for: indexPath) as? MasterTableViewCell else { return UITableViewCell() }
        let master = MasterController.masters[indexPath.row]
        cell.backgroundColor = .clear
        cell.master = master
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMasterDetail" {
            guard let selectedIndex = self.masterInfoTable.indexPathForSelectedRow?.row else { return }
            let detailVC = segue.destination as? MasterDetailViewController
            let clickedMaster = MasterController.masters[selectedIndex]
            detailVC?.clickedMaster = clickedMaster
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }

}
