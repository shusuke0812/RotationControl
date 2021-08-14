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
    /// iPhone / iPad 端末毎の回転有無を表示するための文章を生成
    /// - Parameters:
    ///   - iphoneRotation: iPhoneの回転有無
    ///   - ipadRotation: iPadの回転有無
    static func setDescription(iphoneRotation: Bool, ipadRotation: Bool) -> String {
        let iphoneRotation: String = iphoneRotation ? "回転あり" : "回転なし"
        let ipadRotation: String = ipadRotation ? "回転あり" : "回転なし"
        return "\(self.iphone.rawValue): \(iphoneRotation)" + ", " + "\(self.ipad.rawValue): \(ipadRotation)"
    }
}
