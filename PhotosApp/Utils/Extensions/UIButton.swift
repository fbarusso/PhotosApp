//
//  UIButton.swift
//  PhotosApp
//
//  Created by Felipe Barusso on 02/08/23.
//

import UIKit

extension UIButton {
    func attributedTitle(regularString: String, boldString: String) {
        let regularAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.85), .font: UIFont.systemFont(ofSize: 16)]
        let boldAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.85), .font: UIFont.boldSystemFont(ofSize: 16)]
        
        let attributedTitle = NSMutableAttributedString(string: "\(regularString) ", attributes: regularAttributes)
        attributedTitle.append(NSAttributedString(string: boldString, attributes: boldAttributes))
        
        setAttributedTitle(attributedTitle, for: .normal)
    }
}
