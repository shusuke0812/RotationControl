//
//  AppRootViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/18.
//

/**
 * 参考URL：https://gist.github.com/yoonchulkoh/d0c211ad7c37597213c700bd94d0f1d5
 *
 * TODO:
 * - Login Access Token キャッシュの有無によってページを切り替える処理を入れる
 * - ユニバーサルリンクのURLをもとにページを切り替える処理を入れる
 * - SplitViewの設定処理を入れる
 * - 参考URLのremoveVC処理を入れる？
 */

import UIKit

class AppRootController: UIViewController {

    private var currentViewController: UIViewController?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        showTopPage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: - Private
extension AppRootController {
    private func showTopPage() {
        let vc = Storyboard.RootNavigationController.instantiate(RootNavigationController.self)
        setCurrentViewController(vc)
    }
    private func setCurrentViewController(_ vc: UIViewController) {
        currentViewController = vc
        addChild(vc)
        view.addSubview(vc.view)
        didMove(toParent: vc)
    }
}
