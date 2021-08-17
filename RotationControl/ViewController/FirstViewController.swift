//
//  FirstViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/14.
//

import UIKit

/**
 * １番目の画面
 * - iPhone : 縦表示・横表示
 * - iPad : 縦表示・横表示
 */
class FirstViewController: UIViewController {
    
    @IBOutlet private weak var rootTypeLabel: UILabel!
    @IBOutlet private weak var rotateDescriptionView: RotateDescriptionView!
    @IBOutlet private weak var nextButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .allButUpsideDown
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("DEBUG: デバイス回転処理 ON")
    }
    
    // MARK: - Action
    @IBAction func didTappedNextButton(_ sender: Any) {
        transitionSecondPage()
    }
}

// MARK: - Private
extension FirstViewController {
    private func configUI() {
        rootTypeLabel.text = "Root is Navigation"
        rootTypeLabel.font = UIFont.systemFont(ofSize: Common.ButtonSize.standard)
        
        rotateDescriptionView.backgroundColor = .systemBlue
        rotateDescriptionView.setDescription(descriptionText: RotateDescriptionHelper.setDescription(iphoneRotation: true, ipadRotation: true))
        
        nextButton.setTitle(Common.ButtonTitle.next, for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: Common.ButtonSize.standard)
        
        navigationItem.title = self.className
    }
    private func transitionSecondPage() {
        let vc = Storyboard.RootTabBarController.instantiate(RootTabBarController.self, inBundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
}
