//
//  ViewController.swift
//  MVVMDemo
//
//  Created by apple on 30/03/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    var authenticationVM = AuthenticationVM()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.messageLbl.isHidden = true
    }

    @IBAction func onTapOfLogin(_ sender: UIButton) {
        self.messageLbl.isHidden = true
        guard let username = self.usernameTextfield.text else {return}
        guard let password = self.passwordTextfield.text else {return}
        
        authenticationVM.authenticatedUserWith(username, andPassword: password)
        authenticationVM.logicCompletionHandler { [weak self] (status, message) in
            guard let self = self else {
                print("exit")
                return}
            
            if status {
                self.messageLbl.text = "Login with user == \(self.authenticationVM.username) and \(self.authenticationVM.email)"
                self.messageLbl.isHidden = false
            }else{
                self.messageLbl.text = message
                self.messageLbl.isHidden = false
            }
        }
    }
    
}

