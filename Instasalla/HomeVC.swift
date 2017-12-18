//
//  HomeVC.swift
//  Instasalla
//
//  Created by Mahmoud on 12/6/17.
//

import UIKit
import IGListKit

class HomeVC: UIViewController {
     
     @IBOutlet weak var collectionView: IGListCollectionView!
     
 
     override func viewDidLoad() {
          super.viewDidLoad()
 
          
     }
     
     
     
     
}

class CategorySection: IGListSectionController{
     
     


}
extension CategorySection: ListSectionType {
      func numberOfItems() -> Int {
          return 1
     }
     
      func sizeForItem(at index: Int) -> CGSize {
          return CGSize(width: 375, height: 80)
     }
     
      func cellForItem(at index: Int) -> UICollectionViewCell {
          let cell = IGListCollectionContext!.dequeueReusableCell(withNibName: .reuseIdentifier, bundle: Bundle.main, for: self, at: index)
          
          if let cell = cell as? Charactable, let character = self.character{
               cell.setup(character: character)
          }
          
          return cell
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
