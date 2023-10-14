//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Jonas Josue Morales on 14/10/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        let viewone = UINavigationController(rootViewController: HomeViewController())
        let viewTwo = UINavigationController(rootViewController: UpComingViewController())
        let viewThree = UINavigationController(rootViewController: SearchViewController())
        let viewFour = UINavigationController(rootViewController: DownLoadsViewController())
        
        viewone.tabBarItem.image = UIImage(systemName:"house")
        viewTwo.tabBarItem.image = UIImage(systemName: "popcorn")
        viewThree.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        viewFour.tabBarItem.image = UIImage(systemName: "tray.and.arrow.down")
        
        viewone.title = "Home"
        viewTwo.title = "Coming Soon"
        viewThree.title = "Top Search"
        viewFour.title = "Downloads"
        
        
        tabBar.tintColor = .label
        setViewControllers([viewone, viewTwo, viewThree, viewFour], animated: true)
    }


}


