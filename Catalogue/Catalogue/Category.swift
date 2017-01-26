//
//  Catalogue.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import Foundation

struct Category {
    let title: String
    var itemsArray: [Item]?
    
    init(title: String, itemsArray: [Item]?) {
        self.title = title
        self.itemsArray = itemsArray
    }
}
