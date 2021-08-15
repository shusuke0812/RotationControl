//
//  Storyboard.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/14.
//

import UIKit

/// Storyboard名を管理する
enum Storyboard: String {
    case RootNavigationController
    case TopViewController
    case FirstViewController
    case RootTabBarController
    case SecondViewController
    case ThirdViewController
    
    /// StoryboardからViewControllerインスタンス化する
    func instantiate<VC: UIViewController>(_: VC.Type, inBundle bundle: Bundle? = nil) -> VC {
        let s = UIStoryboard(name: self.rawValue, bundle: bundle)
        guard let vc = s.instantiateInitialViewController() as? VC else {
            fatalError("could not setup viewcontroller: \(self.rawValue)")
        }
        return vc
    }
}
