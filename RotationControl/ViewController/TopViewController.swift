//
//  ViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/13.
//

import UIKit

/**
 * トップ画面
 * - iPhone : 縦表示のみ
 * - iPad : 縦表示・横表示
 */
class TopViewController: UIViewController {
    
    @IBOutlet private weak var rootTypeLabel: UILabel!
    @IBOutlet private weak var rotateDescriptionView: RotateDescriptionView!
    @IBOutlet private weak var nextButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIDevice.current.userInterfaceIdiom == .phone ? .portrait : .allButUpsideDown
    }
    
    // MARK: - Action
    @IBAction private func didTappedNextButton(_ sender: Any) {
        transitionFirstPage()
    }
}

// MARK: - Private
extension TopViewController {
    private func configUI() {
        rootTypeLabel.text = "Root is Navigation"
        rootTypeLabel.font = UIFont.systemFont(ofSize: Common.LabelSize.standard)
        
        rotateDescriptionView.backgroundColor = .systemRed
        rotateDescriptionView.setDescription(descriptionText: RotateDescriptionHelper.setDescription(iphoneRotation: false, ipadRotation: true))
        
        nextButton.setTitle(Common.ButtonTitle.next, for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: Common.ButtonSize.standard)
        
        navigationItem.title = self.className
    }
    private func transitionFirstPage() {
        let vc = Storyboard.FirstViewController.instantiate(FirstViewController.self)
        navigationController?.pushViewController(vc, animated: true)
    }
}
