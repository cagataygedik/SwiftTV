//
//  MainTabBarController.swift
//  SwiftTV
//
//  Created by Celil Çağatay Gedik on 22.02.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTabBar()
    }
    
    func configureTabBar() {
        UITabBar.appearance().tintColor = .systemOrange
        viewControllers = [HomeNavigatonController(), UpcomingNavigationController(), SearchNavigationController(), DownloadsNavigationController()]
    }
    
    func HomeNavigatonController() -> UINavigationController {
        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        return UINavigationController(rootViewController: homeViewController)
    }
    
    func UpcomingNavigationController() -> UINavigationController {
        let upcomingViewController = UpcomingViewController()
        upcomingViewController.tabBarItem = UITabBarItem(title: "Coming Soon", image: UIImage(systemName: "play.circle"), tag: 1)
        
        return UINavigationController(rootViewController: upcomingViewController)
    }
    
    func SearchNavigationController() -> UINavigationController {
        let searchViewController = SearchViewController()
        searchViewController.tabBarItem = UITabBarItem(title: "Top Search", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        
        return UINavigationController(rootViewController: searchViewController)
    }
    
    func DownloadsNavigationController() -> UINavigationController {
        let downloadsViewController = DownloadsViewController()
        downloadsViewController.tabBarItem = UITabBarItem(title: "Downloads", image: UIImage(systemName: "arrow.down.to.line"), tag: 3)
        
        return UINavigationController(rootViewController: downloadsViewController)
    }
}
