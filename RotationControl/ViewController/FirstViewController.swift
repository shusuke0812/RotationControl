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
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .allButUpsideDown
    }
    
    // TODO: 下記は暫定、横回転させたあとに前画面へ戻ると強制的に縦画面になるようにする
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.userInterfaceIdiom == .phone {
            if UIDevice.current.orientation.isLandscape {
                navigationItem.setHidesBackButton(true, animated: false)
            } else {
                navigationItem.setHidesBackButton(false, animated: false)
            }
        }
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
        rotateDescriptionView.setDescription(descriptionText: RotateDescriptionHelper.setDescription(iphoneRotation: false, ipadRotation: true))
        
        nextButton.setTitle(Common.ButtonTitle.next, for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: Common.ButtonSize.standard)
        
        navigationItem.title = self.className
    }
    private func transitionSecondPage() {
        
    }
}
