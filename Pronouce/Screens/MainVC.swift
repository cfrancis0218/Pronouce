//
//  ViewController.swift
//  Pronouce
//
//  Created by Christian Elijah on 2020-11-05.
//

import UIKit

class MainVC: UIViewController {
    
    let cardOne = Card_One()
    let cardTwo = Card_Two()
    
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
        label.text = "Pronounce"
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
    let pencilButton: UIButton = {
        let pencil = UIButton()
        pencil.setImage(UIImage(systemName: "pencil"), for: .normal)
        pencil.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 35, weight: .bold), forImageIn: .normal)
        pencil.layer.cornerRadius = 30
        pencil.layer.shadowColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0).cgColor
        pencil.layer.shadowOffset = .zero
        pencil.layer.shadowOpacity = 0.2
        pencil.layer.shadowRadius = 3
        pencil.tintColor = UIColor(red: 89/255.0, green: 91/255.0, blue: 131/255.0, alpha: 1.0)
        pencil.backgroundColor = UIColor(red: 241/255.0, green: 246/255.0, blue: 249/255.0, alpha: 1.0)
        pencil.addTarget(self, action: #selector(goToLearnScreen), for: .touchUpInside)
        return pencil
    }()
    
    @objc fileprivate func goToLearnScreen() {
        navigationController?.pushViewController(LearnScreen(), animated: true)
    }
    
    // Top Card
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
        navigationController?.isNavigationBarHidden = true
        pronouneConstraints()
        mainCameraSetup()
    }
    
    fileprivate func mainCameraSetup() {
        self.cardTwo.cameraButton.addTarget(self, action: #selector(openCameraAccess), for: .touchUpInside)
    }
    
    @objc fileprivate func openCameraAccess() {
        let cameraAccess = UIImagePickerController()
        cameraAccess.sourceType = .camera
        cameraAccess.cameraCaptureMode = .photo
        cameraAccess.cameraDevice = .rear
        cameraAccess.showsCameraControls = true
        cameraAccess.delegate = self
        self.present(cameraAccess, animated: true, completion: nil)
    }
    // Constraints
    func pronouneConstraints() {
        
        // Card Constraints
        view.addSubview(cardOne)
        cardOne.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(cardTwo)
        cardTwo.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        view.addSubview(pencilButton)
        pencilButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        NSLayoutConstraint.activate([
            
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            topView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550),
            
            cardOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 310),
            cardOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            cardOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            cardOne.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -350),
            
            cardTwo.topAnchor.constraint(equalTo: view.topAnchor, constant: 510),
            cardTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            cardTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            cardTwo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            
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
            
            pencilButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 225),
            pencilButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 275),
            pencilButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            pencilButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -525),
        ])
    }

}

