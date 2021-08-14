//
//  FirstViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/14.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet private weak var rootTypeLabel: UILabel!
    @IBOutlet private weak var rotateDescriptionView: RotateDescriptionView!
    @IBOutlet private weak var nextButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
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
