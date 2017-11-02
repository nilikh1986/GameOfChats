//
//  ViewController.swift
//  GameOfChats
//
//  Created by Patnayak, Nilikh on 11/1/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout() {
        print("logout tapped")
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }
}

