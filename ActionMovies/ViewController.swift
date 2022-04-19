//
//  ViewController.swift
//  ActionMovies
//
//  Created by TranVu on 19/04/2022.
//

import UIKit

class ViewController: UITabBarController {
    
    deinit {
        print("DEINIT")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: CommingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "person.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2, vc3, vc4] , animated: true)
    }
}

