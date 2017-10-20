//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by Brett Fisher on 10/18/17.
//  Copyright © 2017 Brett Fisher. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

  var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant",
                        "Po's Atlier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Express", "Upstate",
                        "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional",
                        "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
  var restaurantImageNames = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant",
                                "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate",
                                "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional",
                                "barrafina", "donostia", "royaloak", "caskpubkitchen"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restaurantNames.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell
    
    cell.nameLabel?.text = restaurantNames[indexPath.row]
    cell.thumbnailImageView?.image = UIImage(named: restaurantImageNames[indexPath.row])
    
    return cell
  }
}
