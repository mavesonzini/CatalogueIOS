//
//  Category.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import XCTest

@testable import Catalogue

class CategoryTest: XCTestCase {
    
    override func setUp() {
        
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testInit_ShouldTakeTitleAndItemsArray() {
       
        _ = Category(title: "Test Title", itemsArray: nil)
    }
    
}
