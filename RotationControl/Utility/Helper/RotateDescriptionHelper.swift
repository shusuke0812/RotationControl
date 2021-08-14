//
//  RotateDescriptionHelper.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import Foundation

enum RotateDescriptionHelper: String {
    case iphone = "iPhone"
    case ipad   = "iPad"
}

// MARK: - Config
extension RotateDescriptionHelper {
    static func setDescription(iphoneRotation: Bool, ipadRotation: Bool) -> String {
        let iphoneRotation: String = iphoneRotation ? "回転あり" : "回転なし"
        let ipadRotation: String = ipadRotation ? "回転あり" : "回転なし"
        return "\(self.iphone.rawValue): \(iphoneRotation)" + ", " + "\(self.ipad.rawValue): \(ipadRotation)"
    }
}
