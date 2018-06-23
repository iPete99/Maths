//
//  UIViewControllerExtension.swift
//  Maths
//
//  Created by Peter and Fuzzy on 23.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func customizeBasicsLabels(_ labels: [UILabel?], formulas: [MathLabel?],
                               descriptionLabels: [Int: String], formulaLabels: [Int: String]) {
        
        let fontSize = GeneralSettings.descriptionLabelFontSize
        let fontName = GeneralSettings.descriptionLabelFontName
        
        for i in 0...labels.count - 1 {
            labels[i]?.font = UIFont(name: fontName, size: fontSize)
            labels[i]?.text = descriptionLabels[i]
        }
        
        for i in 0...formulas.count - 1 {
            formulas[i]?.latex = formulaLabels[i]
        }
    }
}
