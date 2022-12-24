//
//  EventsViewController.swift
//  TabBarController
//
//  Created by Dinar on 24.12.2022.
//

import UIKit

class EventsViewController: UIViewController {
    
    
    @IBOutlet var birthdayCatImage: UIImageView!
    @IBOutlet var walkMoviesImage: UIImageView!
    @IBOutlet var flightPlaneImage: UIImageView!
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdayCatImage.image = UIImage(named: person.event.birthdayCat)
        walkMoviesImage.image = UIImage(named: person.event.movies)
        flightPlaneImage.image = UIImage(named: person.event.flightPlane)
       
    }

}
