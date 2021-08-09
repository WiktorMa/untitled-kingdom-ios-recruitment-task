//
//  DetailsView.swift
//  Recruitment-iOS
//
//  Created by Macbook Pro on 09/08/2021.
//  Copyright © 2021 Untitled Kingdom. All rights reserved.
//

import UIKit

class DetailsView: UIView {
    
    // MARK: - Components of View
    private lazy var textView: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Loading..."
        view.backgroundColor = .clear
        return view
    }()
    
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension DetailsView {
    
    // MARK: - Setup view
    public func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        self.addSubview(textView)
    
    }
    
    // MARK: - Setup Constraints
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            textView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            textView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    public func changeTextViewText(for text: String) {
        textView.text = text
    }
}
