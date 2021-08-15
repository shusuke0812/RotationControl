//
//  RootTabBarViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import UIKit

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
