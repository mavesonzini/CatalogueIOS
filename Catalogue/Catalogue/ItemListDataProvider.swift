//
//  ItemListDataProvider.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class ItemListDataProvider: NSObject, UITableViewDataSource {
    
    override init() {
        
        let item1 = Item.init(title: "black Shoes", itemCategory: "Women shoes", itemPrice: 30, itemQuantity: 1)
        
        let item2 = Item.init(title: "black boots", itemCategory: "Men shoes", itemPrice: 22, itemQuantity: 2)
        
        self.items = [item1, item2]
    }
    
    var items = [Item]()
            
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell")
        
        let item = items[indexPath.row]
        
        cell?.textLabel?.text = item.title

        cell?.textLabel?.text = item.itemCategory
        
        return cell!
        
    }
}

