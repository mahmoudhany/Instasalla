//
//  ProductsCell.swift
//  Instasalla
//
//  Created by Mahmoud on 1/7/18.
//

import UIKit
import IGListKit

final class EmbeddedCollectionViewCell: UICollectionViewCell {
     

     lazy var collectionView: UICollectionView = {
          let layout = UICollectionViewFlowLayout()
          layout.scrollDirection = .vertical
          let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
          view.backgroundColor = .gray
          view.alwaysBounceVertical = false
          view.alwaysBounceHorizontal = false
          self.contentView.addSubview(view)
          return view
     }()
     
     
     override func layoutSubviews() {
          super.layoutSubviews()
          collectionView.frame = contentView.frame
     }
     
}
