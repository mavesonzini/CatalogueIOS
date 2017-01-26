//
//  CategoryListViewControllerTest.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import XCTest
@testable import Catalogue

class CategoryListViewControllerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
       
        super.tearDown()
    }
    
    
    func test_tableViewIsNotNilAfterViewDidLoad() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "CategoryListViewController") as! CategoryListViewController
        
        _ = sut.view
        XCTAssertNotNil(sut.categoryTableView)
    }
    
    func testViewDidLoad_ShouldSetTableViewDataSource() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "CategoryListViewController") as! CategoryListViewController
        
        _ = sut.view
        
        XCTAssertNotNil(sut.categoryTableView.dataSource)
        XCTAssertTrue(sut.categoryTableView.dataSource is CategoryListDataProvider)

    }
    
    func testViewDidLoad_ShouldSetTableViewDelegate() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "CategoryListViewController") as! CategoryListViewController
        
        _ = sut.view
        
        XCTAssertNotNil(sut.categoryTableView.delegate)
        XCTAssertTrue(sut.categoryTableView.delegate is CategoryListDataProvider)
    }
    
    func testViewDidLoad_ShouldSetDelegateAndDataSourceToTheSameObject() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "CategoryListViewController") as! CategoryListViewController
        
        _ = sut.view
        
        XCTAssertEqual(sut.categoryTableView.delegate as? CategoryListDataProvider, sut.categoryTableView.dataSource as? CategoryListDataProvider)
    }
}
