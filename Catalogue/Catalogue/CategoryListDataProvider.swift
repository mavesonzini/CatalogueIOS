//
//  CategoryListDataProvider.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 26/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class CategoryListDataProvider: NSObject, UITableViewDataSource {
    
    var categories = [Category]()
    
    var categoryManager: CategoryManager?
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell")
        
        return cell!
    }


    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories.count
    }
    
}
