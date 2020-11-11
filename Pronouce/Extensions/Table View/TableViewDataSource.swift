//
//  TableViewDataSource.swift
//  Pronouce
//
//  Created by Christian Elijah on 2020-11-08.
//

import Foundation
import UIKit
import AVFoundation

extension LearnScreen: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        learnItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = learnTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SoundTableViewCell
        cell.letter.text = learnItems[indexPath.row].letter
        cell.playSoundButton.setPreferredSymbolConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .semibold), forImageIn: .normal)
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        
        // Sound Setup
        cell.playSoundButton.addTarget(self, action: #selector(playLetter), for: .touchUpInside)
        return cell
    }
    
    @objc fileprivate func playLetter() {
        guard let url = Bundle.main.url(forResource: "nil", withExtension: "mp3") else { return }
        print(url)
        
    }
    
    
}
