//
//  HomeVC.swift
//  Instasalla
//
//  Created by Mahmoud on 12/6/17.
//

import UIKit
import IGListKit

class HomeVC: UIViewController, ListAdapterDataSource {
     
     lazy var adapter: ListAdapter = {
          return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 1)
     }()

     let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
     
     let data = [128, 256, 64]
     
     override func viewDidLoad() {
          super.viewDidLoad()
          
          collectionView.backgroundColor = UIColor.lightGray
          view.addSubview(collectionView)
          adapter.collectionView = collectionView
          adapter.dataSource = self
     }
     
     override func viewDidLayoutSubviews() {
          super.viewDidLayoutSubviews()
          collectionView.frame = view.bounds
     }
     
     // MARK: ListAdapterDataSource
     
     func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
          return data as [ListDiffable]
     }
     
     
     func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
          // note that each child section controller is designed to handle an Int (or no data)
          let sectionController = ListStackedSectionController(sectionControllers: [
               
               ])
          
          sectionController.inset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
          return sectionController
     }
     
     func emptyView(for listAdapter: ListAdapter) -> UIView? { return nil }
     
     
     
}







