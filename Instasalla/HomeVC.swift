//
//  HomeVC.swift
//  Instasalla
//
//  Created by Mahmoud on 12/6/17.
//

import UIKit
import IGListKit

class HomeVC: UIViewController, ListAdapterDataSource {
     
     @IBOutlet weak var collectionView: UICollectionView!
     var data: [Any] = [1]
     
     lazy var adapter: ListAdapter = {
          return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
     }()
     
     
    
     
     override func viewDidLoad() {
          super.viewDidLoad()
          
     }
     
     override func viewDidAppear(_ animated: Bool) {
          collectionView.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 0, right: 0)
          
          adapter.collectionView = collectionView
          adapter.dataSource = self
     }
     
     
     // MARK: ListAdapterDataSource
     
     func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
          return data as! [ListDiffable]
     }
     
     func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
          // note that each child section controller is designed to handle an Int (or no data)
          
          let sectionController = ListStackedSectionController(sectionControllers: [
               ProductsPreviewHeaderSectionController(),
               VerticalCategorySection()
//               WorkingRangeSectionController(),
//               DisplaySectionController(),
//               HorizontalSectionController()
               ])
          
          return sectionController
     }
     
     func emptyView(for listAdapter: ListAdapter) -> UIView? { return nil }
}







