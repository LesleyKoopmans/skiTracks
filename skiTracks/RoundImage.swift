//
//  RoundImage.swift
//  skiTracks
//
//  Created by Lesley on 31-12-16.
//  Copyright © 2016 Lesley. All rights reserved.
//

import UIKit

@IBDesignable

class RoundImage: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
