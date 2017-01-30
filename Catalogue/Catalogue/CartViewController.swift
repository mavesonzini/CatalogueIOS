//
//  CartViewController.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 29/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var cartTableView: UITableView!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var emptyCartLabel: UILabel!
    
    var cartItems = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalPriceLabel.isHidden = true
        emptyCartLabel.isHidden = true
        
        if totalPrice() == 0 {
            cartTableView.isHidden = true
            emptyCartLabel.isHidden = false
            emptyCartLabel.text = "Your cart is empty!"
        } else {
            totalPriceLabel.isHidden = false
            totalPriceLabel.text = "Total £" + "\(totalPrice())"

        }
        
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell")as? CartCell {
            let item = cartItems[indexPath.row]
            cell.itemNameLabel.text = item.name
            cell.itemPriceLabel.text = "£" + "\(item.price)"
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartItems.count
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            cartItems.remove(at: indexPath.row)
            self.cartTableView.reloadData()
        }
    }
    
    func totalPrice() -> Int{
        var cartPrice: Int = 0
        
        for item in cartItems {
            let itemPrice = item.price
            cartPrice += itemPrice
        }
        return cartPrice
    }
    
}
