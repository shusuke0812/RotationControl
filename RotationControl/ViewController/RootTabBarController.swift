//
//  RootTabBarViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import UIKit

/**
 * 回転制御元のRoot ViewController `TabBar `
 */
class RootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        guard let vc = self.selectedViewController else {
            return .allButUpsideDown
        }
        return vc.supportedInterfaceOrientations
    }
}
