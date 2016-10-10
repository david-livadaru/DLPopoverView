//
//  Geometry.swift
//  DLPopoverViewSample
//
//  Created by David Livadaru on 10/10/16.
//  Copyright © 2016 David Livadaru. All rights reserved.
//

import CoreGraphics

public struct Geometry {
    public var frame = CGRect.zero
    public var cornerRadius: Float {
        get {
            return _cornerRadius
        }
        set {
            _cornerRadius = max(0.0, newValue)
        }
    }
    private var _cornerRadius: Float = 0.0
}
