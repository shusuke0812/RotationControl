//
//  rotateDescriptionView.swift
//  RotationControl
//
//  Created by Shusuke Ota on 2021/8/14.
//

import UIKit

class RotateDescriptionView: UIView {
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = .zero
        label.font = UIFont.systemFont(ofSize: 20.0)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "メッセージが設定されていません"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configView()
    }
}

// MARK: - Config
extension RotateDescriptionView {
    private func configView() {
        self.backgroundColor = .systemGray
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            descriptionLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15)
        ])
    }
    func setDescription(descriptionText: String) {
        self.descriptionLabel.text = descriptionText
    }
}
