//
//  AlertChildPageViewController.swift
//  AlertOnboarding
//
//  Created by Philippe on 26/09/2016.
//  Copyright © 2016 CookMinute. All rights reserved.
//

import UIKit

@objc public class AlertChildPageViewController: UIViewController {
    
    var pageIndex: Int!
    
    @objc @IBOutlet public private(set) weak var image: UIImageView!
    @objc @IBOutlet public private(set) weak var labelMainTitle: UILabel!
    @objc @IBOutlet public private(set) weak var labelDescription: UITextView!
    // Default to 80% (0.8) of container view. Adjust multiplier to desired value
    @objc @IBOutlet weak var imageAspectRatio: NSLayoutConstraint!
    @objc @IBOutlet weak var imageContainerView: UIView!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setImageAspectRatio(_ ratio: CGFloat) {
        let newConstraint = imageAspectRatio.constraintWithMultiplier(ratio)
        imageContainerView.removeConstraint(imageAspectRatio)
        imageContainerView.addConstraint(newConstraint)
        imageContainerView.layoutIfNeeded()
    }
}

extension NSLayoutConstraint {
    
    func constraintWithMultiplier(_ multiplier: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: firstItem!,
                                  attribute: firstAttribute,
                                  relatedBy: relation,
                                  toItem: secondItem,
                                  attribute: secondAttribute,
                                  multiplier: multiplier,
                                  constant: constant)
    }
    
}
