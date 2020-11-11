//
//  Card_Two.swift
//  Pronouce
//
//  Created by Christian Elijah on 2020-11-08.
//

import UIKit

class Card_Two: UIView {
    
    
    // Image
    let blueCardImage: UIImageView = {
        var bImage = UIImageView()
        bImage.image = #imageLiteral(resourceName: "joanna-kosinska-7ACuHoezUYk-unsplash")
        bImage.layer.cornerRadius = 15
        bImage.clipsToBounds = true
        bImage.contentMode = .scaleAspectFill
        return bImage
    }()
    
    // Labels
    let captureLabel: UILabel = {
        var cLabel = UILabel()
        cLabel.text = "Capture"
        cLabel.textAlignment = .right
        cLabel.textColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        cLabel.font = UIFont.systemFont(ofSize: 40, weight: .semibold)
        return cLabel
    }()
    
    let everyMomentLabel: UILabel = {
        var eLabel = UILabel()
        eLabel.text = "Every Moment"
        eLabel.textAlignment = .right
        eLabel.textColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        eLabel.font = UIFont.systemFont(ofSize: 25, weight: .ultraLight)
        return eLabel
    }()
    
    // Camera Button
    let cameraButton: UIButton = {
        var camera = UIButton()
        camera.tintColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        camera.backgroundColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0)
        camera.layer.cornerRadius = 15
        camera.setImage(UIImage(systemName: "camera"), for: .normal)
        return camera
    }()
    
    // Init Coder
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cardOneSetup()
        cardConstraints()
    }
    
    // Init frame
    override init(frame: CGRect) {
        super.init(frame: frame)
        cardOneSetup()
        cardConstraints()
    }
    
    // Card Setup
    fileprivate func cardOneSetup() {
        backgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0)
        layer.cornerRadius = 15
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 15
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.5
    }
    
    // Card Constraints
    fileprivate func cardConstraints() {
        
        addSubview(blueCardImage)
        blueCardImage.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(captureLabel)
        captureLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(everyMomentLabel)
        everyMomentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(cameraButton)
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            // Baby Image
            blueCardImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            blueCardImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            blueCardImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            blueCardImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            // Labels
            captureLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            captureLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            captureLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            captureLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
            
            everyMomentLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            everyMomentLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            everyMomentLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            everyMomentLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30),
            
            // Camera Button
            cameraButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            cameraButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 200),
            cameraButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cameraButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
}
