//
//  CategoryListDataProviderTest.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 26/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import XCTest
@testable import Catalogue

class CategoryListDataProviderTest: XCTestCase {
    
    var controller: CategoryListViewController!
    
    override func setUp() {
        
        super.setUp()
     
    }
    
    func testNumberOfSections_IsOne() {
        
        let sut = CategoryListDataProvider()
        
        let tableView = UITableView()
        
        tableView.dataSource = sut
        
        let numberOfSections = tableView.numberOfSections
        
        XCTAssertEqual(numberOfSections, 1)
    }
    
    func testNumberOfRows_IsTwo() {
        
        let sut = CategoryListDataProvider()
        
        let tableView = UITableView()
        
        tableView.dataSource = sut
        
        let numberOfRows = tableView.numberOfRows(inSection: 0)
        
        XCTAssertEqual(numberOfRows, 2)
        
    }
    
}


