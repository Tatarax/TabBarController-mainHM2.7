//
//  LogInViewController.swift
//  TabBarController
//
//  Created by Dinar on 01.12.2022.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet var welcomeUser: UITextField!
    @IBOutlet var emoji: UILabel!
    
    var valueWelcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUser.text = valueWelcomeUser
        
    }
}

//  let label = UILabel(frame: CGRectMake(20, 20, 0, 0))

