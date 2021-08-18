//
//  AppRootViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/18.
//

/**
 * 参考URL：https://gist.github.com/yoonchulkoh/d0c211ad7c37597213c700bd94d0f1d5
 */

import UIKit

class AppRootController: UIViewController {

    private var currentViewController: UIViewController?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        showMainPage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: - Private
extension AppRootController {
    func showMainPage() {
        let vc = RootNavigationController()
        setCurrentViewController(vc)
    }
    private func setCurrentViewController(_ vc: UIViewController) {
        currentViewController = vc
        addChild(vc)
        view.addSubview(vc.view)
        didMove(toParent: vc)
    }
}
