//
//  SoundTableViewCell.swift
//  Pronouce
//
//  Created by Christian Elijah on 2020-11-08.
//

import UIKit

class SoundTableViewCell: UITableViewCell {
    
    let letter: UILabel = {
        var value = UILabel()
        value.textColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0)
        value.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        value.textAlignment = .center
        return value
    }()
    
    let playSoundButton: UIButton = {
        var playSound = UIButton()
        playSound.setImage(UIImage(systemName: "speaker.wave.3.fill"), for: .normal)
        playSound.tintColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0)
        playSound.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .semibold), forImageIn: .normal)
        playSound.addTarget(self, action: #selector(playLetterSound), for: .touchUpInside)
        return playSound
    }()
    
    @objc fileprivate func playLetterSound() {
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        cellSetup()
        soundButtonConstraints()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "cell")
        cellSetup()
        soundButtonConstraints()
    }
    
    fileprivate func cellSetup() {
        backgroundColor = .clear
    }
    
    fileprivate func soundButtonConstraints() {
        
        addSubview(playSoundButton)
        playSoundButton.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(letter)
        letter.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            playSoundButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            playSoundButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            playSoundButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            letter.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            letter.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            letter.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }

}
