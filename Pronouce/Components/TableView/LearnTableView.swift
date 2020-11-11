//
//  LearnTableView.swift
//  Pronouce
//
//  Created by Christian Elijah on 2020-11-08.
//

import UIKit

class LearnTableView: UITableView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tableViewSetup()
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .plain)
        tableViewSetup()
    }
    
    fileprivate func tableViewSetup() {
        backgroundColor = .clear
    }
}
