//
//  YPLoaders.swift
//  YPImagePicker
//
//  Created by Nik Kov on 23.04.2018.
//  Copyright © 2018 Yummypets. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialActivityIndicator

struct YPLoaders {

    static var defaultLoader: UIBarButtonItem {
        //let spinner = UIActivityIndicatorView(style: .gray)
        let spinner = MDCActivityIndicator()
        
        spinner.sizeToFit()
        spinner.cycleColors = [UIColor.gray]
        spinner.radius = 11
        spinner.strokeWidth=2
        
        if let spinnerColor = YPConfig.colors.navigationBarActivityIndicatorColor {
            spinner.cycleColors = [spinnerColor]
        } else {
            if #available(iOS 13, *) {
                let spinnerColor = UIColor { trait -> UIColor in
                    return trait.userInterfaceStyle == .dark ? .white : .gray
                }
                spinner.cycleColors = [spinnerColor]
            }
        }
        spinner.startAnimating()
        return UIBarButtonItem(customView: spinner)
    }
}
