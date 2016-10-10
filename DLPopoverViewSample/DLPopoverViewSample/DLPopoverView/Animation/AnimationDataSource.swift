//
//  AnimationDataSource.swift
//  DLPopoverViewSample
//
//  Created by David Livadaru on 10/10/16.
//  Copyright © 2016 David Livadaru. All rights reserved.
//

import UIKit

public protocol AnimationDataSource : class {
    func transitionDuration() -> NSTimeInterval
    func transitionOptions() -> UIViewAnimationOptions
}
