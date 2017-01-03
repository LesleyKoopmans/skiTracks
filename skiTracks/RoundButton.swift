//
//  RoundedButton.swift
//  DevChat
//
//  Created by Lesley on 27-12-16.
//  Copyright © 2016 Lesley. All rights reserved.
//

import UIKit

@IBDesignable

class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWith: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWith
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var bgColor: UIColor? {
        didSet {
            backgroundColor = bgColor
        }
    }
    
}
