//
//  SecondViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/15.
//

import UIKit

/**
 * ２番目の画面
 * - iPhone : 縦表示のみ
 * - iPad : 縦表示・横表示
 */
class SecondViewController: UIViewController {
    
    @IBOutlet private weak var rootTypeLabel: UILabel!
    @IBOutlet private weak var rotateDescriptionView: RotateDescriptionView!
    @IBOutlet weak var nextButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.parent?.navigationItem.title = self.className
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIDevice.current.userInterfaceIdiom == .phone ? .portrait : .allButUpsideDown
    }
    
    // MARK: - Action
    @IBAction private func didTappedNextButton(_ sender: Any) {
        transitionFourthPage()
    }
}

// MARK: - Private
extension SecondViewController {
    private func configUI() {
        rootTypeLabel.text = "Root is Navigation"
        rootTypeLabel.font = UIFont.systemFont(ofSize: Common.LabelSize.standard)
        
        rotateDescriptionView.backgroundColor = .systemGreen
        rotateDescriptionView.setDescription(descriptionText: RotateDescriptionHelper.setDescription(iphoneRotation: false, ipadRotation: true))
        
        nextButton.setTitle(Common.ButtonTitle.next, for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: Common.ButtonSize.standard)
    }
    private func transitionFourthPage() {
        let vc = Storyboard.FourthViewController.instantiate(FourthViewController.self, inBundle: nil)
        let navVC = RootNavigationController(rootViewController: vc)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true, completion: nil)
    }
}
