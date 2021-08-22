//
//  FourthViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/21.
//

import UIKit

/**
 * ４番目の画面
 * - iPhone : 縦表示のみ
 * - iPad : 縦表示・横表示
 */
class FourthViewController: UIViewController {
    
    @IBOutlet weak var rootTypeLabel: UILabel!
    @IBOutlet weak var rotateDescriptionView: RotateDescriptionView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .allButUpsideDown
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation != .portrait {
            hideCloseButton(true)
        } else {
            hideCloseButton(false)
        }
    }
    
    // MARK: - Action
    @objc func didTappedCloseButton(_ sender: UIBarButtonItem) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
}

// MARK: - Private
extension FourthViewController {
    private func configUI() {
        rootTypeLabel.text = "Root is Navigation"
        rootTypeLabel.font = UIFont.systemFont(ofSize: Common.LabelSize.standard)
        
        rotateDescriptionView.backgroundColor = .systemTeal
        rotateDescriptionView.setDescription(descriptionText: RotateDescriptionHelper.setDescription(iphoneRotation: true, ipadRotation: true))
        
        navigationItem.title = self.className
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTappedCloseButton))
    }
    private func hideCloseButton(_ isHidden: Bool) {
        navigationItem.rightBarButtonItem = isHidden ? nil : UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTappedCloseButton))
    }
}
