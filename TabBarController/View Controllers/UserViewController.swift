//
//  UserViewController.swift
//  TabBarController
//
//  Created by Dinar on 23.12.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var userEmail: UILabel!
    @IBOutlet var userNumberPhone: UILabel!
    @IBOutlet var userLoginVk: UILabel!
    @IBOutlet var userPasswordVk: UILabel!
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userEmail.text = person.user.userEmail
        userNumberPhone.text = person.user.userPhone
        userLoginVk.text = person.user.userLoginVk
        userPasswordVk.text = person.user.userPasswordVk

    }

}
