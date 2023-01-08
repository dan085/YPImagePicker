//
//  YPAlbumView.swift
//  YPImagePicker
//
//  Created by Sacha Durand Saint Omer on 20/07/2017.
//  Copyright © 2017 Yummypets. All rights reserved.
//

import UIKit
import Stevia
import MaterialComponents.MaterialActivityIndicator

class YPAlbumView: UIView {
    
    let tableView = UITableView()
    let spinner = MDCActivityIndicator()
    
    convenience init() {
        self.init(frame: .zero)
        
        spinner.sizeToFit()
        spinner.cycleColors = [UIColor.gray]
        spinner.radius = 11
        spinner.strokeWidth=2
        
        
        sv(
            tableView,
            spinner
        )
        // TableView needs to be the first subview for it to automatically adjust its content inset with the NavBar
        
        spinner.centerInContainer()
        tableView.fillContainer()
        
        backgroundColor = .ypSystemBackground
    }
}
