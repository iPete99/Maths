//
//  MathLabel.swift
//  Maths
//
//  Created by Peter and Fuzzy on 17.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit
import iosMath

class MathLabel: MTMathUILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.fontSize = 15
        self.sizeToFit()
        self.textAlignment = .left
    }
}
