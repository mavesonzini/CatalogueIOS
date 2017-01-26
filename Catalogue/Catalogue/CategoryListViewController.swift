//
//  CategoryListViewControllerTableViewController.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class CategoryListViewController: UIViewController {
    
    @IBOutlet weak var categoryTableView: UITableView!
    @IBOutlet var categoryDataProvider: (UITableViewDataSource & UITableViewDelegate)!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTableView.dataSource = categoryDataProvider
        categoryTableView.delegate = categoryDataProvider
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
