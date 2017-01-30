//
//  ItemCell.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 28/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

protocol ItemCellDelegate: class {

    func didAddToCart(item: Item)
    func didAddToWishList(item: Item)

    
}

class ItemCell: UITableViewCell {

    weak var delegate: ItemCellDelegate?
    
    var item: Item?
    
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemCategoryLabel: UILabel!
    @IBOutlet weak var itemToWishListButton: UIButton!
    @IBOutlet weak var itemToCartButton: UIButton!
    @IBOutlet weak var itemPriceLabel: UILabel!
    @IBOutlet weak var itemQuantityLabel: UILabel!
    @IBOutlet weak var itemOldPriceLabel: UILabel!
        
  
    @IBAction func addToWishList(_ sender: Any) {
        delegate?.didAddToWishList(item: item!)
    }
    
    @IBAction func addToCart(_ sender: Any) {
        delegate?.didAddToCart(item: item!)
    }
    
    
}
