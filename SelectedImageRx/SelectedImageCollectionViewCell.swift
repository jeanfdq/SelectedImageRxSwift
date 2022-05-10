//
//  SelectedImageCollectionViewCell.swift
//  SelectedImageRx
//
//  Created by Jean Paul Borges Manzini on 09/05/22.
//

import UIKit

class SelectedImageCollectionViewCell: UICollectionViewCell {
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        photoImageView.applyViewIntoSuperView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
