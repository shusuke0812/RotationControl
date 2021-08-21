//
//  FourthViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/21.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var rootTypeLabel: UILabel!
    @IBOutlet weak var rotateDescriptionView: RotateDescriptionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
}

// MARK: - Private
extension FourthViewController {
    private func configUI() {
        rootTypeLabel.text = "Root is Navigation"
        rootTypeLabel.font = UIFont.systemFont(ofSize: Common.LabelSize.standard)
        
        rotateDescriptionView.backgroundColor = .systemTeal
        rotateDescriptionView.setDescription(descriptionText: RotateDescriptionHelper.setDescription(iphoneRotation: true, ipadRotation: true))
        
        self.navigationItem.title = self.className
    }
}
