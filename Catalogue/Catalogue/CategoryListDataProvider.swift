//
//  CategoryListDataProvider.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 26/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class CategoryListDataProvider: NSObject, UITableViewDataSource {
    
    override init() {
        
        let item1 = Item.init(title: "black Shoes", itemCategory: "Women shoes", itemPrice: 30, itemQuantity: 1)
        
        let item2 = Item.init(title: "black boots", itemCategory: "Men shoes", itemPrice: 22, itemQuantity: 3)
        
        let category1 = Category(title: "Women shoes", itemsArray: [item1, item2])
        
        let category2 = Category(title: "Men shoes", itemsArray: [item1, item2])
        
        self.categories = [category1, category2]
    }
    
    var categories = [Category]()
        
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell")
        
        let category = categories[indexPath.row]
        
        cell?.textLabel?.text = category.title
        
        return cell!
    }


    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories.count
    }
    
}
