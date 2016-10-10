//
//  AnimationController.swift
//  DLPopoverViewSample
//
//  Created by David Livadaru on 10/10/16.
//  Copyright © 2016 David Livadaru. All rights reserved.
//

import Foundation

public struct AnimationController : PopoverHandler {
    public unowned var dataSource: AnimationDataSource
    
    unowned var popoverView: PopoverView
    
    init(popoverView: PopoverView, dataSource: AnimationDataSource) {
        self.popoverView = popoverView
        self.dataSource = dataSource
    }
}
