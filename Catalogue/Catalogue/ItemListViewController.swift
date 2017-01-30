//
//  ItemListViewController.swift
//  Catalogue
//
//  Created by María Verónica Sonzini on 25/01/2017.
//  Copyright © 2017 María Verónica Sonzini. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ItemCellDelegate, WishListDelegate {
    
    @IBOutlet weak var itemTableView: UITableView!
    @IBOutlet weak var addToCartButton: UIBarButtonItem!
    @IBOutlet weak var addToWishListButton: UIBarButtonItem!
    
    var items = [Item]()
    public var cartItemsArray = [Item]()
    public var wishListItemsArray = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()

    }
    
    func fetchData() {
        
        let url: String = "https://private-anon-b85b8fc09d-ddshop.apiary-mock.com/products"
        let urlRequest = URL(string: url)
        URLSession.shared.dataTask(with: urlRequest!, completionHandler: {
            (data, respose, error) in
            if(error != nil) {
                print(error.debugDescription)
                } else {
                do {
                    let listData = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as!
                        [[String: AnyObject]]
                    for itemDictionary in listData {
                        let item = Item(itemDictionary: itemDictionary)
                        self.items.append(item)
                    }
                    OperationQueue.main.addOperation {
                        self.itemTableView?.reloadData()
                    }
                }catch let error as NSError {
                    print(error)
                }
            }
        }).resume()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as? ItemCell {
            let item = items[indexPath.row]
            cell.item = item
            cell.delegate = self
            cell.itemOldPriceLabel.isHidden = true
            cell.itemTitleLabel.text = item.name
            cell.itemCategoryLabel.text = item.category
            cell.itemPriceLabel.text = "£" + "\(item.price)"
            if item.oldPrice != nil {
                cell.itemOldPriceLabel.isHidden = false
                cell.itemOldPriceLabel.text = "Was " + "£" + "\(item.oldPrice!)"
            }
            
            if item.stock == 0 {
                cell.itemQuantityLabel.textColor = UIColor.red
                cell.itemQuantityLabel.text = "Out of Stock"
            } else {
                cell.itemQuantityLabel.textColor = UIColor.green
                cell.itemQuantityLabel.text = "Only " + "\(item.stock)" + " left"
            }
            return cell
        } else {
            return UITableViewCell()
            
        }
    }
    
    
    func didAddToCart(item: Item) {
        if item.stock > 0 {
        cartItemsArray.append(item)
        postCart(item: item)
        }
    }
    
    func didAddToWishList(item: Item) {
        wishListItemsArray.append(item)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toCartSegue") {
            let cartViewController = segue.destination as! CartViewController
            cartViewController.cartItems = self.cartItemsArray
        } else if segue.identifier == "toWishListSegue" {
            let wishListViewController = segue.destination as! WishListViewController
            wishListViewController.wishArray = self.wishListItemsArray
            wishListViewController.delegate = self
            
        }
    }
    
    func postCart(item: Item) {
        let urlString: String = "https://private-anon-b85b8fc09d-ddshop.apiary-mock.com/cart"
        var urlRequest = URLRequest(url: URL(string: urlString)!)
        urlRequest.httpMethod = "POST"
        let parameters = ["productId": item.produtId]
        do {
            urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }
        
        
        URLSession.shared.dataTask(with: urlRequest, completionHandler: {
            (data, respose, error) in
            if(error != nil) {
                print(error.debugDescription)
            } else {
                do {
                    let listData = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String: AnyObject]
                    print(listData)
                    print("Product added to cart")
                }catch let error as NSError {
                    print(error)
                }
            }
        }).resume()
        
    }

}

