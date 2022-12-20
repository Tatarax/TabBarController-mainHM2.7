//
//  DetaliedInfoForPersonViewController.swift
//  TabBarController
//
//  Created by Dinar on 20.12.2022.
//

import UIKit

class DetaliedInfoForPersonViewController: UIViewController {

    @IBOutlet var educationLabel: UILabel!
    @IBOutlet var workLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        educationLabel.text = person.personEducation.education
        workLabel.text = person.personWork.work
        hobbyLabel.text = person.personHobby.hobby
    
    }
    


}
