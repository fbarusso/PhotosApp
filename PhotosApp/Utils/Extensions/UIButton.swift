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
    
    func setupAuthenticationButton(title: String) {
        setTitle(title, for: .normal)
        isEnabled = false
        backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
        setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).withAlphaComponent(0.67), for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        layer.cornerRadius = 5
        setHeight(50)
    }
}
