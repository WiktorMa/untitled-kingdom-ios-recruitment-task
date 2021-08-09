//
//  StartView.swift
//  Recruitment-iOS
//
//  Created by Macbook Pro on 09/08/2021.
//  Copyright © 2021 Untitled Kingdom. All rights reserved.
//

import UIKit

class StartView: UIView {
    
    public var startButtonClicked: (() -> Void)?

    // MARK: - Components of View
    
    private lazy var startButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("START", for: .normal)
        button.addTarget(self, action: #selector(onStartButtonClicked), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension StartView {
    
    // MARK: - Setup view
    public func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        self.backgroundColor = .white
        self.addSubview(startButton)
    }
    
    // MARK: - Setup Constraints
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            startButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            startButton.centerXAnchor.constraint(lessThanOrEqualTo: self.centerXAnchor)
        ])
    }
    
    // MARK: - Selectors
    @objc private func onStartButtonClicked(_ sender: UIButton) {
        startButtonClicked?()
    }
}
