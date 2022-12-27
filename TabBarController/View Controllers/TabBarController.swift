//
//  TabBarViewController.swift
//  TabBarController
//
//  Created by Dinar on 27.12.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        settingTabBarAppereance()
    }
    
    private func settingTabBarAppereance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 15
        let width = tabBar.bounds.width - positionOnX * 2
        let hight = tabBar.bounds.height + positionOnX * 2
        
        let roundLayer = CAShapeLayer ()
        
        let shape = UIBezierPath(roundedRect: CGRect(x: positionOnX,
                                                     y: tabBar.bounds.minY - positionOnY,
                                                     width: width,
                                                     height: hight),
                                 cornerRadius: hight / 2)
        roundLayer.path = shape.cgPath
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 5
        roundLayer.fillColor = UIColor.tabBarMainColor.cgColor
        
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
        
        
        
    }

    
}
