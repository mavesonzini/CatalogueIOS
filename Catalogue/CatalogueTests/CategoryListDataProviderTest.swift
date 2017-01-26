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
        
        let sut = CategoryListDataProvider()
        
        sut.categoryManager = CategoryManager()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        controller = storyboard.instantiateViewController(withIdentifier: "CategoryListViewController") as!
            
        CategoryListViewController
        
        _ = controller.view
        
        let tableView = controller.categoryTableView
        
        tableView?.dataSource = sut
    }
    
    func testNumberOfSections_IsOne() {
        
        let sut = CategoryListDataProvider()
        
        let tableView = UITableView()
        
        tableView.dataSource = sut
        
        let numberOfSections = tableView.numberOfSections
        
        XCTAssertEqual(numberOfSections, 1)
    }
    
}

extension CategoryListDataProviderTest {
    
    class MockCategoryTableView : UITableView {
        
        var cellGotDequeued = false
        
        override func dequeueReusableCell(withIdentifier identifier: String) -> UITableViewCell? {
            
            cellGotDequeued = true
            
            return super.dequeueReusableCell(withIdentifier: identifier)
        }
        
    }
    
    func testCellForRow_DequeuesCell() {
        
        let mockTableView = MockCategoryTableView()
        
        let sut = CategoryListDataProvider()
        
        mockTableView.dataSource = sut
        
        mockTableView.register(CategoryCell.self, forCellReuseIdentifier: "CategoryCell")
        
        XCTAssertTrue(mockTableView.cellGotDequeued)
    }
}


