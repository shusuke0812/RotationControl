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
