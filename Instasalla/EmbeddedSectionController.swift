//
//  EmbeddedSectionController.swift
//  Instasalla
//
//  Created by Mahmoud on 12/22/17.
//

import UIKit
import IGListKit

final class EmbeddedSectionController: ListSectionController {
     
     private var number: Int?
     
     override init() {
          super.init()
          inset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
     }
     
     override func sizeForItem(at index: Int) -> CGSize {
          let height: CGFloat = 140

          let width = (collectionContext?.containerSize.width) ?? 0
          return CGSize(width: width, height: height)
     }
     
     override func numberOfItems() -> Int {
          return 5
     }
     
     override func cellForItem(at index: Int) -> UICollectionViewCell {
          guard let cell = collectionContext?.dequeueReusableCell(withNibName: "wideCategoryCell", bundle: Bundle.main, for: self, at: index) as? wideCategoryCell else {
               fatalError()
          }
          cell.categoryImage.image = UIImage(named: "food")
          cell.categoryType.text = "Coolers"
          cell.productsCount.text = "12 Products"
          return cell
     }
     
     override func didUpdate(to object: Any) {
          number = object as? Int
     }
}
