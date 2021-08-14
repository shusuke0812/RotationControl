//
//  ViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/13.
//

import UIKit

class RootViewController: UIViewController {
    
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
        transitionFirstPage()
    }
}

// MARK: - Private
extension RootViewController {
    private func configUI() {
        vcLabel.text = "Root ViewController"
        vcView.backgroundColor = .systemRed
        vcView.setDescription(descriptionText: "iPad：画面回転あり、iPhone：画面回転なし")
        nextButton.setTitle("次に進む", for: .normal)
        
        navigationItem.title = "Root is Navigation"
    }
    private func transitionFirstPage() {
        let vc = Storyboard.FirstViewController.instantiate(FirstViewController.self)
        navigationController?.pushViewController(vc, animated: true)
    }
}
