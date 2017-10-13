//
//  WelcomeViewController.swift
//  Slayer
//
//  Created by Logan Davis on 9/20/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var RSNTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func clickHereButtonClicked(_ sender: Any) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        activityIndicator.startAnimating()
        guard let playerName = RSNTextField.text else { return }
        PlayerController.shared.playerName = playerName
        
        PlayerController.shared.searchForRSN(by: playerName) { (player) in
            DispatchQueue.main.async {
                UIApplication.shared.isNetworkActivityIndicatorVisible = false
                self.activityIndicator.stopAnimating()
                self.performSegue(withIdentifier: "loginSegue", sender: self)
            }
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "loginSegue" {
//            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBar") as UIViewController
//            present(viewController, animated: true, completion: nil)
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.activityIndicatorViewStyle = .whiteLarge
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
    }
}
