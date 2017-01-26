//
//  Item.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import Foundation

struct Item {
    let title: String
    
    let itemCategory: String?
    
    let itemPrice: double_t
    
    let itemQuantity: int_fast8_t
    
    init(title: String, itemCategory: String?, itemPrice: double_t, itemQuantity: int_fast8_t) {
        self.title = title
    
        self.itemCategory = itemCategory
        
        self.itemPrice = itemPrice
        
        self.itemQuantity = itemQuantity
    }
}

