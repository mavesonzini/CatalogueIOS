//
//  WishListCell.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 29/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

protocol WishListDelegate: class {
    func didAddToCart(item: Item)
}

class WishListCell: UITableViewCell {
        
    var item: Item?
    
    weak var delegate: WishListDelegate?

    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    @IBOutlet weak var addToCartButton: UIButton!
    
    @IBAction func addToCartFromList(_ sender: Any) {
        delegate?.didAddToCart(item: item!)
    }
}
