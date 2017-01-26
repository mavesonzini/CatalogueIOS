//
//  CatalogueManagerTests.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 26/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import XCTest
@testable import Catalogue

class CategoryManagerTests: XCTestCase {
    
    override func setUp() {
        
        super.setUp()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    
    func testCategoryCount_InitiallyShouldBeZero() {
        
        let sut = CategoryManager()
        
        XCTAssertEqual(sut.categoryCount, 0, "Initially Category count should be 0")
    }
  
    
}
