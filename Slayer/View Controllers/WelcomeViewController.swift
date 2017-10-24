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
        attemptToLogin()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIApplication.shared.isStatusBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.RSNTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.activityIndicatorViewStyle = .whiteLarge
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
        RSNTextField.delegate = self
        

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        attemptToLogin()
        return true
    }
    
    func attemptToLogin() {
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
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.shared.isStatusBarHidden = false
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
