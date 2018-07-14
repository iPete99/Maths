//
//  TrigonometryViewController.swift
//  Maths
//
//  Created by Peter and Fuzzy on 10.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit

class BinomialCoefficientViewController: UIViewController {
    
    let binomialCoefficientModel = BinomialCoefficientLabel()
    let basicItemStore = BasicsItemStore()
    
    // label outlets
    @IBOutlet var label0: UILabel!
    @IBOutlet var label1: UILabel!

    
    // formula outlets
    @IBOutlet var formula0: MathLabel!
    @IBOutlet var formula1: MathLabel!
    @IBOutlet var formula2: MathLabel!
    @IBOutlet var formula3: MathLabel!
    @IBOutlet var formula4: MathLabel!
    @IBOutlet var formula5: MathLabel!
    @IBOutlet var formula6: MathLabel!
    @IBOutlet var formula7: MathLabel!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.basicItemStore.rows[2]
                
        let labels = [self.label0, self.label1
        ]
        let formulas = [self.formula0, self.formula1, self.formula2,
                        self.formula3, self.formula4, self.formula5,
                        self.formula6, self.formula7
        ]
        let descriptionLabels = self.binomialCoefficientModel.descriptionLabels
        let formulaLabels = self.binomialCoefficientModel.formulaLabels
        
        self.customizeDesprictionLabels(labels, descriptionLabels: descriptionLabels)
        self.customizeFormulas(formulas, formulaLabels: formulaLabels)
    }
}
