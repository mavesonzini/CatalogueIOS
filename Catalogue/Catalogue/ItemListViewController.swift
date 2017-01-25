//
//  ItemListViewController.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {
    var tableView: UITableView?

    @IBOutlet weak var itemTableView: UITableView!
    @IBOutlet weak var dataProvider: ItemListDataProvider!
    
    override func viewDidLoad() {
        itemTableView.dataSource = dataProvider
    }
}

