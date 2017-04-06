//
//  UIExtensions.swift
//  Go Go Github
//
//  Created by Brandon Little on 4/4/17.
//  Copyright © 2017 Brandon Little. All rights reserved.
//

import UIKit

extension UIResponder {
    
    static var identifier : String {
        return String(describing: self)
    }
    
}
