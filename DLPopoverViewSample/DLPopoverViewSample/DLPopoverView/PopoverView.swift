//
//  PopoverView.swift
//  DLPopoverViewSample
//
//  Created by David Livadaru on 10/10/16.
//  Copyright © 2016 David Livadaru. All rights reserved.
//

import UIKit

public class PopoverView: UIView {
    public var arrow = Geometry() {
        didSet {
            setNeedsDisplay()
        }
    }
    public var arrowDirection = ArrowDirection.Automatic
    public var prefferedArrowDirection: ArrowDirection?
    public var content = Geometry() {
        didSet {
            setNeedsDisplay()
        }
    }
    
    public var shapeLayer: CAShapeLayer? {
        return layer as? CAShapeLayer
    }
    
    public var presentingViewController: UIViewController?
    public var parentViewController: UIViewController?
    
    public var contentViewController: UIViewController!
    
    public var animationController: AnimationController!
    
    private var contentView = UIView()
    
    private var pathBuilder: PathBuilder!
    public var animationDataSource: AnimationDataSource = DefaultAnimationDataSource() {
        didSet {
            animationController?.dataSource = animationDataSource
        }
    }
    
    // MARK: UIView override
    
    final override public class func layerClass() -> AnyClass {
        return CAShapeLayer.self
    }
    
    public convenience init(contentViewController: UIViewController,
                            presentingViewController: UIViewController) {
        self.init(contentViewController: contentViewController)
        
        self.presentingViewController = presentingViewController
    }
    
    public convenience init(contentViewController: UIViewController, parentViewController: UIViewController) {
        self.init(contentViewController: contentViewController)
        
        self.parentViewController = parentViewController
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("View composition in Interface Builder is not supported.")
    }
    
    override public func drawRect(rect: CGRect) {
        prepareForDrawing()
        
        super.drawRect(rect)
        
        // Drawing code
    }
    
    // MARK: Private initialization
    
    private init(contentViewController: UIViewController) {
        self.contentViewController = contentViewController
        
        super.init(frame: CGRect.zero)
        
        initializeObjects()
    }
    
    private func initializeObjects() {
        pathBuilder = PathBuilder(popoverView: self)
        animationDataSource = DefaultAnimationDataSource()
        animationController = AnimationController(popoverView: self, dataSource: animationDataSource)
    }
    
    // MARK: Drawing
    
    private func prepareForDrawing() {
        let bezierPath = pathBuilder.build()
        shapeLayer?.path = bezierPath.CGPath
    }
}
