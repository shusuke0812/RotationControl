//
//  RootNavigationController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import UIKit

/**
 * 回転制御元のRoot ViewController `Navigation `
 */
class RootNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        guard let vc = self.visibleViewController else {
            return .allButUpsideDown
        }
        return vc.supportedInterfaceOrientations
    }
}
