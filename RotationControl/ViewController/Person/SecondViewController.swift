//
//  SecondViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2024/6/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showSecondMainView()
    }
    
    private func showSecondMainView() {
        view.subviews.forEach { $0.removeFromSuperview() }
        let s = UIStoryboard(name: "SecondMainViewController", bundle: nil)
        let vc = s.instantiateInitialViewController() as! SecondMainViewController
        addChild(vc)
        
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vc.view)
        vc.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            vc.view.topAnchor.constraint(equalTo: view.topAnchor),
            vc.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vc.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vc.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
