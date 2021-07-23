//
//  CoustmCollectionCell.swift
//  TestSwift
//
//  Created by gewei on 2021/7/22.
//

import UIKit

class CoustmCollectionViewCell: UICollectionViewCell {
    
    class var identifier: String {
          return String(describing: self)
    }
    
    lazy var contentBgView: UIView = {
        let contentBgView = UIView()
        contentBgView.backgroundColor = UIColor.green
        return contentView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(contentBgView)
        contentBgView.frame = self.frame
        contentBgView.backgroundColor = UIColor.systemPurple
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
