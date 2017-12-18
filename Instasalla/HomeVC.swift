//
//  HomeVC.swift
//  Instasalla
//
//  Created by Mahmoud on 12/6/17.
//

import UIKit
import IGListKit

class HomeVC: UIViewController{
     
     @IBOutlet weak var collectionView: UICollectionView!
     
 
     override func viewDidLoad() {
          super.viewDidLoad()
 
          
     }
     
     
     
     
}

class CategorySection: IGListItemController, IGListItemType{
     func numberOfItems()-> UInt{
          
          return 1
          
     }
     
     
     func sizeForItemAtIndex(index: Int) -> CGSize {
          return CGSize(width: ListCollectionContext.containerSize.width, height: 55)
     }
     
     
     var item: String?
     
     func didUpdateToItem(item: AnyObject) {
          self.item = item as? String
     }
     


}



























//     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//          let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductsCell
//
//          cell.productImage.image = UIImage(named: "food.jpg")
//          cell.productsCount.text = "123 Products"
//          cell.productType.text = "Frozen"
//
//          return cell
//     }
