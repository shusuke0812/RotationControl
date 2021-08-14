//
//  UIViewController+Extension.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import UIKit

extension UIViewController {
    var className: String {
        String(describing: type(of: self))
    }
}
