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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
}

// MARK: - Private
extension RootViewController {
    private func configUI() {
        vcLabel.text = "Root ViewController"
        vcView.backgroundColor = .systemRed
    }
}
