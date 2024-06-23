//
//  SecondViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2024/6/23.
//

import UIKit

class SecondViewController: UIViewController {
    private var showSecondMain = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showSecondMainView()
        let parentVC = parent as! RootTabBarController
        parentVC.onTapSwitch = { [weak self] in
            guard let self else {
                return
            }
            self.showSecondMain.toggle()
            
            if self.showSecondMain {
                self.showSecondMainView()
            } else {
                self.showSecondSubView()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        parent?.navigationItem.title = self.className
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIDevice.current.userInterfaceIdiom == .phone ? .portrait : .allButUpsideDown
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
    
    private func showSecondSubView() {
        view.subviews.forEach { $0.removeFromSuperview() }
        let s = UIStoryboard(name: "SecondSubViewController", bundle: nil)
        let vc = s.instantiateInitialViewController() as! SecondSubViewController
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
