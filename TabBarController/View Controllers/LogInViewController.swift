//
//  LogInViewController.swift
//  TabBarController
//
//  Created by Dinar on 01.12.2022.
//

import UIKit

final class LogInViewController: UIViewController {

    
    @IBOutlet var welcomeUser: UITextField!
    @IBOutlet var infoPersonLabel: UILabel!
    
    var valueWelcomeUser: String!
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = valueWelcomeUser
        
        infoPersonLabel.text = person.aboutMe
        
    }
}


