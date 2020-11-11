//
//  Card_One.swift
//  Pronouce
//
//  Created by Christian Elijah on 2020-11-08.
//

import UIKit

class Card_One: UIView {
    
    let schoolImage: UIImageView = {
        var aImage = UIImageView()
        aImage.image = #imageLiteral(resourceName: "joanna-kosinska-1_CMoFsPfso-unsplash")
        aImage.layer.cornerRadius = 15
        aImage.clipsToBounds = true
        aImage.contentMode = .scaleAspectFill
        return aImage
    }()
    
    let schoolButton: UIButton = {
        var aBtn = UIButton()
        aBtn.backgroundColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0)
        aBtn.layer.cornerRadius = 15
        aBtn.setTitle("Learn", for: .normal)
        aBtn.setTitleColor(UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0), for: .normal)
        return aBtn
    }()
    
    let schoolLabel: UILabel = {
        var aLabel = UILabel()
        aLabel.text = "School"
        aLabel.textColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        aLabel.textAlignment = .right
        aLabel.font = UIFont.systemFont(ofSize: 50, weight: .semibold)
        return aLabel
    }()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cardOneSetup()
        imageConstraints()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        cardOneSetup()
        imageConstraints()
    }
    
    fileprivate func cardOneSetup() {
        backgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0)
        layer.cornerRadius = 15
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowRadius = 15
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.5
    }
    
    fileprivate func imageConstraints() {
        
        addSubview(schoolImage)
        schoolImage.translatesAutoresizingMaskIntoConstraints = false
        
        // Button
        addSubview(schoolButton)
        schoolButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Label
        addSubview(schoolLabel)
        schoolLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            schoolImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            schoolImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            schoolImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            schoolImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            schoolLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            schoolLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            schoolLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            schoolLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            
            schoolButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            schoolButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 200),
            schoolButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            schoolButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
}
