//
//  Alert.swift
//  AlertOnboarding
//
//  Created by Anthony Perozzo on 26/08/18.
//  Copyright © 2018 CookMinute. All rights reserved.
//

import UIKit

@objc public class Alert: NSObject {
    public var image: UIImage
    public var title: String
    public var text: String
    
    @objc public init(image: UIImage, title: String, text: String) {
        self.image = image
        self.title = title
        self.text = text
    }
}
