//
//  ItemTest.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import XCTest

@testable import Catalogue

class ItemTest: XCTestCase {
    
    override func setUp() {
       
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testInit_shouldTakeTitleDescriptionCategoryPriceAndQuantity() {
     
        _ = Item(title: "Test title", itemCategory: "test Category", itemPrice: 10.00, itemQuantity: 1 )
    }
    
}
