//
//  CustomTextField.swift
//  PhotosApp
//
//  Created by Felipe Barusso on 03/08/23.
//

import UIKit

class CustomTextField: UITextField {
    init(placeholder: String) {
        super.init(frame: .zero)
        
        let spacerView = UIView()
        spacerView.setDimensions(height: 50, width: 12)
        leftView = spacerView
        leftViewMode = .always
        
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        setHeight(50)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
