//
//  ArrowDirection.swift
//  DLPopoverViewSample
//
//  Created by David Livadaru on 10/10/16.
//  Copyright © 2016 David Livadaru. All rights reserved.
//

import Foundation

public enum ArrowDirection {
    case Automatic, Top, Left, Bottom, Right
}

struct ArrowDirectionFinder : PopoverHandler {
    unowned var popoverView: PopoverView
    
    init(popoverView: PopoverView) {
        self.popoverView = popoverView
    }
}
