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
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let downloadButton: UIButton = {
        let downloadIcon = UIImage(named: "arrow.down")
        let button = UIButton(type: .custom)
        button.setTitle("download", for: .normal)
        button.setImage(downloadIcon, for: .normal)
        button.frame = CGRect(x:50, y:50, width:100, height: 100)
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
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
        addSubview(downloadButton)
        applyContrains()
        
    }
    
    private func applyContrains(){
        let playButtonConstrain = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 100)
            
        ]
        
        let downloadButtonConstrain = [
            downloadButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant:205),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120)
            
        ]
        NSLayoutConstraint.activate(playButtonConstrain)
        NSLayoutConstraint.activate(downloadButtonConstrain)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
