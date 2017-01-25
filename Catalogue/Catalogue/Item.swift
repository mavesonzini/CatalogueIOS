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
    
    init(title: String, itemCategory: String?) {
        self.title = title
        self.itemCategory = itemCategory
    }
}

