//
//  StartViewController.swift
//  Recruitment-iOS
//
//  Created by Macbook Pro on 09/08/2021.
//  Copyright © 2021 Untitled Kingdom. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    // View
    private var startView: StartView { return self.view as! StartView }
    
    // MARK: - Instance properties
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func loadView() {
        self.view = StartView(frame: UIScreen.main.bounds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.startView.setupUI()
        self.setupNavigationAttributs()
        self.setupActions()
    }
}

extension StartViewController {
    
    // MARK: - Setup
    private func setupNavigationAttributs() {
        self.navigationItem.title = nil
        self.navigationController?.navigationBar.tintColor = .darkGray
    }

    // MARK: - Actions
    private func setupActions() {
        startView.startButtonClicked = { [weak self] in
            guard let `self` = self else { return }
            self.presentTabBar()
        }
    }

    
    private func presentTabBar() {
        print("START_BUTTON_CLICKED")
        navigationController?.pushViewController(TabBarController(), animated: true)
    }
}
