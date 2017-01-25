//
//  ItemListDataProviderTest.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import XCTest
@testable import Catalogue

class ItemListDataProviderTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfSections_IsTwo()
    {
        let sut = ItemListDataProvider()
        
        let itemTableView = UITableView()
        itemTableView.dataSource = sut
        let numberOfSections = itemTableView.numberOfSections
        
        XCTAssertEqual(numberOfSections, 2)
    }
    
    
}
