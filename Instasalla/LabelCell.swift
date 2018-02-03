//
//  LabelCell.swift
//  Instasalla
//
//  Created by Mahmoud on 1/7/18.
//

import UIKit

class CenterLabelCell: UICollectionViewCell {
     
     lazy private var label: UILabel = {
          let view = UILabel()
          view.backgroundColor = .black
          view.textAlignment = .center
          view.textColor = .white
          view.font = .boldSystemFont(ofSize: 18)
          self.contentView.addSubview(view)
          return view
     }()
     
     var text: String? {
          get {
               return label.text
          }
          set {
               label.text = newValue
          }
     }
     
     override func layoutSubviews() {
          super.layoutSubviews()
          label.frame = contentView.bounds
     }
     
}
