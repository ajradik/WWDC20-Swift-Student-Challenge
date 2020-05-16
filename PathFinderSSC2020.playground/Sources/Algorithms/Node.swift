//
//  Node.swift
//  PathFinder
//
//  Copyright © 2020 Artemas J. Radik. All rights reserved.
//

import Foundation
import UIKit

class Node {
    
    enum NodeType {
        case wall
        case space
        case start
        case end
    }
    
    var view: UIView
    var type: NodeType = .space
    var isVisited: Bool = false
    var parent: Node? = nil
    
    var f: Int?
    var g: Int?
    var h: Int?
    
    init(view: UIView) {
        self.view = view
    }
    
}
