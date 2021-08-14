//
//  FirstViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/14.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    static func instantiate() -> FirstViewController {
        let s = UIStoryboard(name: "FirstViewController", bundle: nil)
        guard let vc = s.instantiateInitialViewController() as? FirstViewController else {
            fatalError("can not setup first viewcontroller")
        }
        return vc
    }
}
