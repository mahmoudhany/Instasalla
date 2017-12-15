//
//  HomeVC.swift
//  Instasalla
//
//  Created by Mahmoud on 12/6/17.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
     
     @IBOutlet weak var tableView: UITableView!
     
     override func viewDidLoad() {
          super.viewDidLoad()
          tableView.delegate = self
          tableView.dataSource = self
          
     }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 8
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductsCell
          
          cell.productImage.image = UIImage(named: "food.jpg")
          cell.productsCount.text = "123 Products"
          cell.productType.text = "Frozen"
          
          return cell
     }
     
     
}









