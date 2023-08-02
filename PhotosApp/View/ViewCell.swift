//
//  ViewCell.swift
//  PhotosApp
//
//  Created by Felipe Barusso on 02/08/23.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemPurple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
