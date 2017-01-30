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
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testNumberOfRows_IsTwo() {
        
        let sut = ItemListDataProvider()
        
        let tableView = UITableView()
        
        tableView.dataSource = sut
        
        let numberOfRows = tableView.numberOfRows(inSection: 0)
        
        XCTAssertEqual(numberOfRows, 2)
        
    }
    
    
}
