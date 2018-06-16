//
//  BasicsDetailViewController.swift
//  Maths
//
//  Created by Peter and Fuzzy on 06.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit
import iosMath


class ExponentRulesViewController: UIViewController{
    
    let exponentModel = ExponentLabel()
    
    @IBOutlet var label0: UILabel!
    @IBOutlet var formula0: MTMathUILabel!
    @IBOutlet var label1: UILabel!
    @IBOutlet var formula1: MTMathUILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Exponent Rules"
        
        self.label0.text = self.exponentModel.descriptionLabels[0]
        self.label1.text = self.exponentModel.descriptionLabels[1]
        
        self.formula0.latex = self.exponentModel.formulaLabels[0]
        self.formula0.textAlignment = .center
        self.formula0.sizeToFit()
        self.formula1.latex = self.exponentModel.formulaLabels[1]
        self.formula1.textAlignment = .center
        self.formula1.sizeToFit()
    }
}
