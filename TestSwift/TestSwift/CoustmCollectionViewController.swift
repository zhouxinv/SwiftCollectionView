//
//  CoustmCollectionViewController.swift
//  TestSwift
//
//  Created by gewei on 2021/7/22.
//

import UIKit


class CoustmCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "我的名字"
        collectionView?.register(CoustmCollectionViewCell.self, forCellWithReuseIdentifier:"CoustmCollectionViewCellReuseID")
    }
}


extension CoustmCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "CoustmCollectionViewCellReuseID", for: indexPath)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

}
