//
//  tabBarVC.swift
//  Instasalla
//
//  Created by Mahmoud on 12/6/17.
//

import UIKit


class tabBarVC: UITabBarController {
     
     
     @IBOutlet weak var shoppingCart: UIBarButtonItem!
     
     var image = UIImage(named: "shopping-cart")
     
     
     
     override func viewDidLoad() {
          super.viewDidLoad()
          
          self.tabBar.unselectedItemTintColor = UIColor.white
          
          let ShoppingCart = UIBarButtonItem(image: image, style: .plain, target: self, action: nil)
          
          
          navigationItem.rightBarButtonItem = ShoppingCart
          navigationItem.rightBarButtonItem?.badgeValue = "1"
          navigationItem.rightBarButtonItem?.tintColor = UIColor.white
          
          navigationItem.rightBarButtonItem?.badgeBGColor = UIColor.orange
          navigationItem.rightBarButtonItem?.shouldAnimateBadge = true
          
     }
     
     
     
}
