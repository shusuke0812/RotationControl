//
//  ThirdViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import UIKit

/**
 * ３番目の画面
 * - iPhone : 縦表示・横表示
 * - iPad : 縦表示・横表示
 */
class ThirdViewController: UIViewController {

    @IBOutlet private weak var rootTypeLabel: UILabel!
    @IBOutlet private weak var rotateDescriptionView: RotateDescriptionView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .allButUpsideDown
    }
    
    // TODO: 下記は暫定、横回転させたあとに 前画面へ戻る or Secondタブをタップする と強制的に縦画面になるようにする
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.userInterfaceIdiom == .phone {
            if UIDevice.current.orientation.isLandscape {
                self.parent?.navigationItem.setHidesBackButton(true, animated: false)
            } else {
                self.parent?.navigationItem.setHidesBackButton(false, animated: false)
            }
        }
    }
}

// MARK: - Private
extension ThirdViewController {
    private func configUI() {
        rootTypeLabel.text = "Root is Navigation"
        rootTypeLabel.font = UIFont.systemFont(ofSize: Common.ButtonSize.standard)
        
        rotateDescriptionView.backgroundColor = .systemPink
        rotateDescriptionView.setDescription(descriptionText: RotateDescriptionHelper.setDescription(iphoneRotation: true, ipadRotation: true))
        
        self.parent?.navigationItem.title = self.className
    }
}
