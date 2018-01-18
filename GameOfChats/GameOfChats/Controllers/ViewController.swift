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
        
        
         
         // Example of setting contraint of subview using safe area and without safe area.
         
        let tempView = UIView()
        tempView.backgroundColor = .green
        tempView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tempView)
        
        let tempView2 = UIView()
        tempView2.backgroundColor = .orange
        tempView2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tempView2)
        
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                tempView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                tempView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tempView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tempView.heightAnchor.constraint(equalToConstant: 100)
                ])
        } else {
            NSLayoutConstraint.activate([
                tempView.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
                tempView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tempView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tempView.heightAnchor.constraint(equalToConstant: 100)
                ])
        }
        
        
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                tempView2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                tempView2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tempView2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tempView2.heightAnchor.constraint(equalToConstant: 100)
                ])
        } else {
            NSLayoutConstraint.activate([
                tempView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
                tempView2.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tempView2.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tempView2.heightAnchor.constraint(equalToConstant: 100)
                ])
        }
        // If navigation bar is hidden then top of temp view will start from safe area of view.
        // If navigation bar is not hidden then top of temp view will start from navigation bar bottom.
        //navigationController?.navigationBar.isHidden = true
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneTapped))
        let clearButton = UIBarButtonItem(title: "Clear", style: .plain, target: self, action: #selector(clearTapped))
        //self.navigationController?.setToolbarItems([doneButton, clearButton], animated: true)
        self.setToolbarItems([doneButton, clearButton], animated: true)
        self.navigationController?.isToolbarHidden = false
     
    }
    
    func doneTapped() {
        print("done tapped")
    }
    
    func clearTapped() {
        print("clear tapped")
    }
    
    func handleLogout() {
        print("logout tapped")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let loginController = storyboard.instantiateViewController(withIdentifier: "LoginController")
        present(loginController, animated: true, completion: nil)
    }
}

