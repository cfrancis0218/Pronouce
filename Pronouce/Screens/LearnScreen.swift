//
//  LearnScreen.swift
//  Pronouce
//
//  Created by Christian Elijah on 2020-11-07.
//

import UIKit
import AVFoundation

class LearnScreen: UIViewController {
    
    var player: AVAudioPlayer?
    
    // TableView
    let learnTableView = LearnTableView()
    
    var learnItems = [
        LettersModel(letter: "A"),
        LettersModel(letter: "B"),
        LettersModel(letter: "C"),
        LettersModel(letter: "D"),
        LettersModel(letter: "E"),
        LettersModel(letter: "F"),
        LettersModel(letter: "G"),
        LettersModel(letter: "H"),
        LettersModel(letter: "I"),
        LettersModel(letter: "J"),
        LettersModel(letter: "K"),
        LettersModel(letter: "L"),
        LettersModel(letter: "M"),
        LettersModel(letter: "N"),
        LettersModel(letter: "O"),
        LettersModel(letter: "P"),
        LettersModel(letter: "Q"),
        LettersModel(letter: "R"),
        LettersModel(letter: "S"),
        LettersModel(letter: "T"),
        LettersModel(letter: "U"),
        LettersModel(letter: "V"),
        LettersModel(letter: "X"),
        LettersModel(letter: "Y"),
        LettersModel(letter: "Z"),
    ]
    
    // Heart Image
    let heartImage: UIImageView = {
        let heartImg = UIImageView()
        heartImg.image = UIImage(systemName: "suit.heart.fill")
        heartImg.clipsToBounds = true
        heartImg.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        heartImg.tintColor = UIColor(red: 251/255.0, green: 163/255.0, blue: 200/255.0, alpha: 1.0)
        return heartImg
    }()
    
    // Top Label
    let aLabel: UILabel = {
        let label = UILabel()
        label.text = "Learn"
        label.textColor = UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1.0)
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 60, weight: .bold)
        return label
    }()
    
    let otherLabel: UILabel = {
        let olabel = UILabel()
        olabel.text = "from the heart"
        olabel.textColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        olabel.textAlignment = .center
        olabel.font = UIFont.systemFont(ofSize: 35, weight: .ultraLight)
        return olabel
    }()
    
    // Home Button
    let homeButton: UIButton = {
        let home = UIButton()
        home.setImage(UIImage(systemName: "house.fill"), for: .normal)
        home.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 25, weight: .bold), forImageIn: .normal)
        home.layer.cornerRadius = 30
        home.layer.shadowColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0).cgColor
        home.layer.shadowOffset = .zero
        home.layer.shadowOpacity = 0.2
        home.layer.shadowRadius = 3
        home.tintColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0)
        home.backgroundColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        home.addTarget(self, action: #selector(goToMainVC), for: .touchUpInside)
        return home
    }()
    
    @objc fileprivate func goToMainVC() {
        navigationController?.pushViewController(MainVC(), animated: true)
    }
    
    let topView: UIView = {
        let aView = UIView()
        aView.backgroundColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0)
        aView.layer.cornerRadius = 30.0
        aView.layer.shadowColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0).cgColor
        aView.layer.shadowOffset = .zero
        aView.layer.shadowRadius = 10.0
        aView.layer.shadowOpacity = 0.5
        return aView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0)
        playLetterSound()
        pronouneConstraints()
        delegateSetup()
    }
    
    // Sound Functionality
    func playLetterSound() {
        
    }
    
    fileprivate func delegateSetup() {
        learnTableView.register(SoundTableViewCell.self, forCellReuseIdentifier: "cell")
        
        learnTableView.delegate = self
        learnTableView.dataSource = self
    }
    
    // Constraints
    func pronouneConstraints() {
        
        // Table View
        view.addSubview(learnTableView)
        learnTableView.translatesAutoresizingMaskIntoConstraints = false
        
        // Card Constraints
        view.addSubview(topView)
        topView.translatesAutoresizingMaskIntoConstraints = false
        
        // Label Constraints
        view.addSubview(aLabel)
        aLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(otherLabel)
        otherLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Heart Image
        view.addSubview(heartImage)
        heartImage.translatesAutoresizingMaskIntoConstraints = false
        
        // Buttons
        view.addSubview(homeButton)
        homeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            // Table View
            learnTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            learnTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            learnTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            learnTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            // Top View
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            topView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550),
            
            
            heartImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            heartImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            heartImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -300),
            heartImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -620),
            
            aLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            aLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            aLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            aLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
            
            otherLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            otherLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            otherLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            otherLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
            
            homeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 225),
            homeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 275),
            homeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            homeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -525),

        ])
    }
}
