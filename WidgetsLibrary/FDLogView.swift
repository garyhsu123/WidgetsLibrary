//
//  FDLogView.swift
//  WidgetsLibrary
//
//  Created by Yu-Chun Hsu on 2021/5/29.
//

import UIKit

class FDLogView: UIView {

    @IBOutlet weak var collectionView: UICollectionView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customInit()
    }
    
    func customInit() {
     
//        let bb = Bundle.init(path: Bundle.main.path(forResource: "FDWidgetsBundle", ofType: "bundle")!)
//
//        if let logView = UINib.init(nibName: "FDLogView", bundle: bb).instantiate(withOwner: self, options: nil).first as? FDLogView {
//            addSubview(logView)
//            logView.frame = self.bounds
//        }
//        collectionView.register(UINib.init(nibName: "FDLogCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: FDLogCollectionViewCell.cellIdentifier)
    }
}

extension FDLogView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.bounds.size.width, height: 30)
    }
}

extension FDLogView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FDLogCollectionViewCell.cellIdentifier, for: indexPath)
        return cell
    }
    
    
}
