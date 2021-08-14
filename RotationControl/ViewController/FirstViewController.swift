//
//  FirstViewController.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/14.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var vcLabel: UILabel!
    @IBOutlet weak var vcView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    static func instantiate() -> FirstViewController {
        let s = UIStoryboard(name: "FirstViewController", bundle: nil)
        guard let vc = s.instantiateInitialViewController() as? FirstViewController else {
            fatalError("can not setup first viewcontroller")
        }
        return vc
    }
    
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
        nextButton.setTitle("次に進む", for: .normal)
    }
    private func transitionSecondPage() {
        
    }
}
