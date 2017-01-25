//
//  ItemListViewControllerTests.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import XCTest
@testable import Catalogue

class ItemListViewControllerTests: XCTestCase {
    
    var sut: ItemListViewController!
    
    
    override func setUp()
    {
        super.setUp()
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    func test_tableViewIsNotNilAfterViewDidLoad()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
        
        _ = sut.view
        XCTAssertNotNil(sut.itemTableView)
        
    }
    
    func testViewDidLoad_ShouldSetTableViewDataSource()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
        
        _ = sut.view
        
        XCTAssertNotNil(sut.itemTableView.dataSource)
        XCTAssertTrue(sut.itemTableView.dataSource is ItemListDataProvider)
    }
    
    func testViewDidLoad_ShouldSetTableViewDelegate()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
        
        _ = sut.view
        
        XCTAssertNotNil(sut.itemTableView.delegate)
        XCTAssertTrue(sut.itemTableView.delegate is ItemListDataProvider)
    }
    
    func testViewDidLoad_ShouldSetDelegateAndDataSourceToTheSameObject()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
        
        _ = sut.view
        
        XCTAssertEqual(sut.itemTableView.dataSource as? ItemListDataProvider, sut.itemTableView.delegate as? ItemListDataProvider)
    }
}

