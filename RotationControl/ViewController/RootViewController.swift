//
//  ViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/13.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet private weak var vcLabel: UILabel!
    @IBOutlet weak var vcView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
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
        nextButton.setTitle("次に進む", for: .normal)
    }
    private func transitionFirstPage() {
        
    }
}
