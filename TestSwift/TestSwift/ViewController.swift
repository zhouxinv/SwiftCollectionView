//
//  ViewController.swift
//  TestSwift
//
//  Created by gewei on 2021/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionview: UICollectionView!
    @IBOutlet weak var btnPresent: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.register(CoustmCollectionViewCell.self, forCellWithReuseIdentifier:"CoustmCollectionViewCellReuseID")
//        btnPresent.addTarget(self, action: #selector(onClickBtnPresnt), for: .touchUpInside)
    }
    
//    @objc func onClickBtnPresnt() -> Void {
//        let newVC = CoustmCollectionViewController()
//
//        self.present(newVC, animated: true, completion: nil)
//    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "CoustmCollectionViewCellReuseID", for: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
}

