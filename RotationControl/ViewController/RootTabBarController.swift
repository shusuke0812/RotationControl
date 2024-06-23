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
        navigationItem.hidesBackButton = true
        
        let menuButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "line.3.horizontal"),
            style: .plain,
            target: self,
            action: #selector(showSideMenu(_:))
        )
        navigationItem.leftBarButtonItem = menuButtonItem
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        guard let vc = self.selectedViewController else {
            return .allButUpsideDown
        }
        return vc.supportedInterfaceOrientations
    }
    
    @objc
    private func showSideMenu(_ sender: UIBarButtonItem) {
        
    }
}
