//
//  SelectedImageCollectionViewCell.swift
//  SelectedImageRx
//
//  Created by Jean Paul Borges Manzini on 09/05/22.
//

import UIKit

class SelectedImageCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
