//
//  UIViewExtension.swift
//  PathFinder
//
//  Copyright © 2020 Artemas J. Radik. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    var cornerRadius: CGFloat {
        
        get {
            return layer.cornerRadius
        }
        
        set {
            layer.cornerRadius = newValue
        }
        
    }

}
