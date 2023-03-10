//
//  ViewController.swift
//  TabBarController
//
//  Created by Dinar on 30.11.2022.
//

import UIKit

//Mark: private
private let login = "admin"
private let password = "admin123"


//Mark: class
class LogInViewController: UIViewController {
    
    @IBOutlet var userLogin: UITextField!
    @IBOutlet var userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getColor()
    }
    
    // MARK: Work with segue:
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? TabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let homeVC = viewController as? HomeViewController {
                homeVC.valueWelcomeUser = userLogin.text
            }
        }
    }
        
        //Main metod:
    
    @IBAction func ActionButtonLogIn() {
            if (userLogin.text == login) && (userPassword.text == password) {
                func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                    guard segue.destination is LogInViewController else { return }
                }
            } else {
                let erorrAlertController = UIAlertController(title: "Erorr!", message: "Not correct login or password.", preferredStyle: .alert)
                
                let alertButton = UIAlertAction(title: "OK", style: .default)
                erorrAlertController.addAction(alertButton)
                
                present(erorrAlertController, animated: true)
            }
        }
        
        // MARK: Work with Aletr Controller:
        
        @IBAction func ShowLoginAC(_ sender: UIButton) {
            let loginAlertController = UIAlertController(title: "Твой логин", message: "Логин: admin", preferredStyle: .alert)
            
            let alertButton = UIAlertAction(title: "OK", style: .default)
            loginAlertController.addAction(alertButton)
            
            present(loginAlertController, animated: true)
        }
        
        @IBAction func ShowPasswordAC() {
            let passwordAlertController = UIAlertController(title: "Твой пароль", message: "Пароль: admin123", preferredStyle: .alert)
            
            let alertButton = UIAlertAction(title: "ОК", style: .default)
            passwordAlertController.addAction(alertButton)
            
            present(passwordAlertController, animated: true)
        }
    }



