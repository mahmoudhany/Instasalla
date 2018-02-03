//
//  ProductsPreviewHeaderSectionController.swift
//  Instasalla
//
//  Created by Mahmoud on 1/26/18.
//
//

import UIKit
import IGListKit

class ProductsPreviewHeaderSectionController: ListSectionController , UIScrollViewDelegate{
     
     //MARK: images for scrollview
     fileprivate let productsPreviewImages = ["bread","food","bread"]
     
     
     override init() {
          super.init()
          inset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
     }
//     var pageControl = UIPageControl()
     let screenSize = UIScreen.main.bounds
     
     //MARK: Telling the adapter how big the cell will be
     override func sizeForItem(at index: Int) -> CGSize {
          return CGSize(width: screenSize.width, height: 180)
     }
     
     //MARK: Configuring the cell, adding photos
     override func cellForItem(at index: Int) -> UICollectionViewCell {
          guard let cell = collectionContext?.dequeueReusableCell(withNibName: "ProductsPreviewCell", bundle: nil, for: self, at: index) as? ProductsPreviewCell
               else{fatalError()}

          
          cell.productScrollView.delegate = self
          cell.productScrollView.isPagingEnabled = true
          
          let height = cell.productScrollView.frame.height
          
          cell.productScrollView.contentSize = CGSize(width: (collectionContext?.containerSize.width)! * CGFloat(productsPreviewImages.count), height: height)
          
          //MARK: no horizontal, vertical or bounce (These can also be configured in storyboard
          cell.productScrollView.showsHorizontalScrollIndicator = false
          cell.productScrollView.showsVerticalScrollIndicator = false
          cell.productScrollView.bounces = false
          
          
          for i in 0..<productsPreviewImages.count{
               print(i)
               let imageView = UIImageView()
               imageView.image = UIImage(named: productsPreviewImages[i])
               imageView.contentMode = .scaleAspectFill
               
               cell.productScrollView.addSubview(imageView)
               
               imageView.frame.size.width = screenSize.width
               
               let x = imageView.frame.size.width * CGFloat(i)
               
               imageView.frame = CGRect(x: x, y: 0, width: screenSize.width, height: height)
               
               cell.productScrollView.contentSize.width = screenSize.width * CGFloat(i + 1)
          }
          return cell
     }
     
     
     
}







