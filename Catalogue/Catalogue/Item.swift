//
//  Item.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import Foundation

struct Item {
    
    var name: String = ""
    var produtId: String = ""
    var category: String = ""
    var price: Int = 0
    var oldPrice: Int?
    var stock: Int = 0
    
    init(itemDictionary: [String: AnyObject]) {
        if let name = itemDictionary["name"] as? String {
            self.name = name
        }
        
        if let produtId = itemDictionary["productId"] as? String {
            self.produtId = produtId
        }
        
        if let category = itemDictionary["category"] as? String {
            self.category = category
        }
        
        if let price = itemDictionary["price"] as? Int {
            self.price = price
        }
        
        if let oldPrice = itemDictionary["oldPrice"] as? Int {
            self.oldPrice = oldPrice
            
        }
        
        if let stock = itemDictionary["stock"] as? Int {
            self.stock = stock
            
        }
    }
}

