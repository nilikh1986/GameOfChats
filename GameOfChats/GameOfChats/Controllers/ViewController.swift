//
//  ViewController.swift
//  GameOfChats
//
//  Created by Patnayak, Nilikh on 11/1/17.
//  Copyright © 2017 Patnayak, Nilikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        self.view.backgroundColor = .red
        
        /*
         
         // Example of setting contraint of subview using safe area and without safe area.
         
        let tempView = UIView()
        tempView.backgroundColor = .green
        tempView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tempView)
        
        NSLayoutConstraint.activate([
            tempView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tempView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tempView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tempView.heightAnchor.constraint(equalToConstant: 100)
            ])
        // If navigation bar is hidden then top of temp view will start from safe area of view.
        // If navigation bar is not hidden then top of temp view will start from navigation bar bottom.
        //navigationController?.navigationBar.isHidden = true
     */
    }
    
    func handleLogout() {
        print("logout tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let loginController = storyboard.instantiateViewController(withIdentifier: "LoginController")
        present(loginController, animated: true, completion: nil)
    }
}

