//
//  StartButton.swift
//  Maths
//
//  Created by Peter and Fuzzy on 06.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit

class StartButton: UIButton {
    
    let shadowOffSetNormal: CGSize = CGSize(width: -4.0, height: 4.0)
    let shadowOffSetTapped: CGSize = CGSize(width: -2.0, height: 2.0)
    let titleFont = "Chalkduster"
    let titleSize: CGFloat = 22
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //border
        self.layer.borderWidth = 0.0
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 10
        
        //shadow
        self.layer.shadowOpacity = 1.0
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 3.0 // default is 3.0
        self.layer.shadowOffset = self.shadowOffSetNormal
        
        //background color
        self.backgroundColor = UIColor.white
        
        // title color
        self.setTitleColor(UIColor.darkGray, for: .normal)
        self.titleLabel?.font = UIFont(name: self.titleFont, size: self.titleSize)
        
        // configure touch events
        self.addTarget(self, action: #selector(self.touchedDown), for: .touchDown)
        self.addTarget(self, action: #selector(self.touchCancelled), for: [.touchUpInside, .touchUpOutside, .touchDragExit])
    }
    
    @objc func touchedDown() {
        self.layer.shadowOffset = self.shadowOffSetTapped
    }
    
    @objc func touchCancelled() {
        self.layer.shadowOffset = self.shadowOffSetNormal
    }
}
