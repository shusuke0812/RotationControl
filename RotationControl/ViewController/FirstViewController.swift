//
//  FirstViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/14.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet private weak var vcLabel: UILabel!
    @IBOutlet private weak var vcView: RotateDescriptionView!
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
        vcLabel.text = "First ViewController"
        vcView.backgroundColor = .systemBlue
        vcView.setDescription(descriptionText: "iPad：画面回転あり、iPhone：画面回転なし")
        nextButton.setTitle("次に進む", for: .normal)
        navigationItem.title = "Root is Navigation"
    }
    private func transitionSecondPage() {
        
    }
}
