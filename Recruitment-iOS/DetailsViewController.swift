//
//  DetailsViewController.swift
//  UKiOSTest
//
//  Created by Paweł Sporysz on 15.09.2016.
//  Copyright © 2016 Paweł Sporysz. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, NetworkingManagerDelegate {
    
    // View
    private var detailsView: DetailsView { return self.view as! DetailsView }
    
    // MARK: - Lifecycle
    override func loadView() {
        self.view = DetailsView(frame: UIScreen.main.bounds)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailsView.setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let tableViewController = navigationController?.viewControllers[0] as! TableViewController
        let selectedIndex = tableViewController.tableView.indexPathForSelectedRow?.row ?? 0
        let title = tableViewController.itemModels[selectedIndex].name
        var newTitle = ""
        for (index, letter) in title.enumerated() {
            let newLetter = index % 2 == 0 ? String(letter).lowercased() : String(letter).uppercased()
            newTitle += newLetter
        }
        
        self.title = newTitle
        self.view.backgroundColor = tableViewController.itemModels[selectedIndex].color
        
        NetworkingManager.sharedManager.delegate = self
        NetworkingManager.sharedManager.downloadItemWithID("1")
    }
}

extension DetailsViewController {
    func downloadedItems(_ items: [ItemModel]) {
        
    }
    
    func downloadedItemDetails(_ itemDetails: ItemDetailsModel) {
        detailsView.changeTextViewText(for: itemDetails.desc)
    }

}
