//
//  AuthenticationButton.swift
//  PhotosApp
//
//  Created by Felipe Barusso on 10/08/23.
//

import UIKit

class AuthenticationButton: UIView {
    
    // MARK: - Properties
    
    var isValid: Bool = false {
        didSet {
            configureValidState()
        }
    }
    
    lazy var button = UIButton(type: .system)
    
     // MARK: - Lifecycle
    
    init(title: String) {
        super.init(frame: .zero)
        
        addSubview(button)
        button.fillSuperview()
        
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.setHeight(50)
        
        configureValidState()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Helpers
    
    func configureValidState() {
        if isValid {
            button.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
            button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) , for: .normal)
        } else {
            button.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
            button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).withAlphaComponent(0.67) , for: .normal)
        }
    }
}
