//
//  WishListViewController.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 29/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class WishListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, WishListDelegate {
    @IBOutlet weak var emptyWishListLabel: UILabel!
    @IBOutlet weak var wishListTableView: UITableView!

    weak var delegate: WishListDelegate?
    var wishArray = [Item]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        emptyWishListLabel.isHidden = true
        wishListTableView.isHidden = false
        if wishArray.count == 0 {
            wishListTableView.isHidden = true
            emptyWishListLabel.isHidden = false
        emptyWishListLabel.text = "Your wish List is empty!"

        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wishArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WishListCell")as? WishListCell {
            let item = wishArray[indexPath.row]
            cell.item = item
            cell.itemNameLabel.text = item.name
            cell.itemPriceLabel.text = "£" + "\(item.price)"
            cell.delegate = self
            return cell
            
        } else {
            
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            wishArray.remove(at: indexPath.row)
            self.wishListTableView.reloadData()
        }

    }
    
    func didAddToCart(item: Item) {
        delegate?.didAddToCart(item: item)

    }
}
