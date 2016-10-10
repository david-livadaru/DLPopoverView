//
//  PathBuilder.swift
//  DLPopoverViewSample
//
//  Created by David Livadaru on 10/10/16.
//  Copyright © 2016 David Livadaru. All rights reserved.
//

import UIKit

private enum Corner {
    case TopLeft, BottomLeft, BottomRight, TopRight
    
    func next() -> Corner {
        switch self {
        case .TopLeft:
            return .BottomLeft
        case .BottomLeft:
            return .BottomRight
        case .BottomRight:
            return .TopRight
        case .TopRight:
            return .TopLeft
        }
    }
    
    mutating func nextInPlace() {
        self = next()
    }
    
    static func corner(fromArrowDirection direction: ArrowDirection) -> Corner {
        assert(direction != .Automatic, "Unable to provide a corner for Automatic direction.")
        switch direction {
        case .Right:
            return .TopRight
        case .Top:
            return .TopLeft
        case .Left:
            return .BottomLeft
        case .Bottom:
            fallthrough
        default:
            return .BottomRight
        }
    }
}

struct PathBuilder : PopoverHandler {
    unowned var popoverView: PopoverView
    
    init(popoverView: PopoverView) {
        self.popoverView = popoverView
    }
    
    func build() -> UIBezierPath {
        let path = UIBezierPath()
        // TODO: create the path
        return path
    }
}
