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
class ViewController: UIViewController {
    
    @IBOutlet var userLogin: UITextField!
    @IBOutlet var userPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getColor()
        
    }
    
    
    
    
// MARK: Work with segue:
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let LogInVC = segue.destination as? LogInViewController else { return }
        LogInVC.valueWelcomeUser = userLogin.text
    }

    @IBAction  func unwind(for segue: UIStoryboardSegue) {
        guard let LogInVC = segue.source as? LogInViewController else { return }
        userLogin.text = LogInVC.welcomeUser.text
        userLogin.text = ""
        userPassword.text = ""
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
 
extension UIViewController {
    func getColor() {
        let fisrtColor = UIColor(red: 150/200, green: 65/125, blue: 200/255, alpha: 1).cgColor
        let secondColor = UIColor(red: 65/138, green: 200/90, blue: 110/255, alpha: 1).cgColor
        
        let gradientColor = CAGradientLayer()
        gradientColor.frame = self.view.bounds
        gradientColor.colors = [fisrtColor, secondColor]
        gradientColor.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientColor.endPoint = CGPoint(x: 0.5, y: 1.0)
        self.view.layer.insertSublayer(gradientColor, at: 0)
    }
    
    
}
