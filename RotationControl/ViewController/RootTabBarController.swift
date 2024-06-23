//
//  RootTabBarViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import UIKit
import SwiftUI

/**
 * 回転制御元のRoot ViewController `TabBar `
 */
class RootTabBarController: UITabBarController {
    var onTapSwitch: (() -> Void)?

    private var sideMenuView: SideMenuView!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        // Navigation
        let menuButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "line.3.horizontal"),
            style: .plain,
            target: self,
            action: #selector(onTappedMenu(_:))
        )
        let switchButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "square.split.2x2.fill"),
            style: .plain,
            target: self,
            action: #selector(onSwitch(_:))
        )
        navigationItem.leftBarButtonItem = menuButtonItem
        navigationItem.rightBarButtonItem = switchButtonItem
        
        sideMenuView = SideMenuView(isOpen: true)
        sideMenuView.onTapBackground = { [weak self] in
            self?.closeSideMenu()
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        guard let vc = self.selectedViewController else {
            return .allButUpsideDown
        }
        return vc.supportedInterfaceOrientations
    }
    
    // MARK: - Side Menu
    @objc
    private func onTappedMenu(_ sender: UIBarButtonItem) {
        showSideMenu()
    }
    
    private func showSideMenu() {
        let hc = UIHostingController(rootView: sideMenuView)
        hc.view.backgroundColor = .clear
        hc.modalTransitionStyle = .crossDissolve
        hc.modalPresentationStyle = .overFullScreen
        present(hc, animated: true)
    }
    
    private func closeSideMenu() {
        dismiss(animated: true)
    }
    
    // MARK: - Switch
    @objc
    private func onSwitch(_ sender: UIBarButtonItem) {
        onTapSwitch?()
    }
}
