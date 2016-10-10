//
//  DefaultAnimationDataSource.swift
//  DLPopoverViewSample
//
//  Created by David Livadaru on 10/10/16.
//  Copyright © 2016 David Livadaru. All rights reserved.
//

import UIKit

class DefaultAnimationDataSource : AnimationDataSource {
    func transitionDuration() -> NSTimeInterval {
        return 0.25
    }
    
    func transitionOptions() -> UIViewAnimationOptions {
        return []
    }
}
