//
//  UIView.swift
//  SelectedImageRx
//
//  Created by Jean Paul Borges Manzini on 09/05/22.
//

import UIKit

extension UIView {
    
    func applyViewIntoSuperView(value:UIEdgeInsets = .zero){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        leadingAnchor.constraint(equalTo: superview?.leadingAnchor ?? NSLayoutXAxisAnchor(), constant: value.left).isActive = true
        topAnchor.constraint(equalTo: superview?.topAnchor ?? NSLayoutYAxisAnchor(), constant: value.top).isActive = true
        trailingAnchor.constraint(equalTo: superview?.trailingAnchor ?? NSLayoutXAxisAnchor(), constant: value.right).isActive = true
        bottomAnchor.constraint(equalTo: superview?.bottomAnchor ?? NSLayoutYAxisAnchor(), constant: value.bottom).isActive = true
        
    }
    
}

