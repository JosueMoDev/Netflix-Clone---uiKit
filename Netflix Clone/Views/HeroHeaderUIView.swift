//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Jonas Josue Morales on 14/10/23.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("play", for: .normal)
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let heroImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "marioBros")
        return imageView
    }()
    
    private func addGraddient() {
        let graddientLayer = CAGradientLayer()
        graddientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        graddientLayer.frame = bounds
        layer.addSublayer(graddientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGraddient()
        addSubview(playButton)
        applyContrains()
        
    }
    
    private func applyContrains(){
        let playButtonConstrain = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            
        ]
        NSLayoutConstraint.activate(playButtonConstrain)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
