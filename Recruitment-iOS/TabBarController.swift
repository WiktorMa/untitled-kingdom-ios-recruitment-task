//
//  TabBarController.swift
//  Recruitment-iOS
//
//  Created by Macbook Pro on 09/08/2021.
//  Copyright © 2021 Untitled Kingdom. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVCs()
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                     title: String,
                                                     tabTitle: String) -> UIViewController {
           let navController = UINavigationController(rootViewController: rootViewController)
           navController.tabBarItem.title = title
           rootViewController.navigationItem.title = tabTitle
           return navController
       }
    
    func setupVCs() {
          viewControllers = [
              createNavController(for: TableViewController(), title: NSLocalizedString("Item", comment: ""), tabTitle: NSLocalizedString("List", comment: ""))
          ]
      }
}
