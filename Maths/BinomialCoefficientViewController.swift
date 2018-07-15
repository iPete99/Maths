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
    @IBOutlet var calcLabel0: UILabel!

    
    // formula outlets
    @IBOutlet var formula0: MathLabel!
    @IBOutlet var formula1: MathLabel!
    @IBOutlet var formula2: MathLabel!
    @IBOutlet var formula3: MathLabel!
    @IBOutlet var formula4: MathLabel!
    @IBOutlet var formula5: MathLabel!
    @IBOutlet var formula6: MathLabel!
    @IBOutlet var calcFormula0: MathLabel!
    @IBOutlet var calcFormula1: MathLabel!
    @IBOutlet var calcFormula2: MathLabel!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.basicItemStore.rows[2]
                
        let labels = [self.label0, self.label1
        ]
        let calcLabels = [self.calcLabel0]
        let formulas = [self.formula0, self.formula1, self.formula2,
                        self.formula3, self.formula4, self.formula5,
                        self.formula6
        ]
        let calcFormulas = [
            self.calcFormula0, self.calcFormula1, self.calcFormula2
        ]
        
        let descriptionLabels = self.binomialCoefficientModel.descriptionLabels
        let formulaLabels = self.binomialCoefficientModel.formulaLabels
        let calcDescriptionLabels = self.binomialCoefficientModel.calcDescriptionLabels
        let calcFormulaLabels = self.binomialCoefficientModel.calcFormulaLabels
        
        self.customizeDesprictionLabels(labels, descriptionLabels: descriptionLabels)
        self.customizeFormulas(formulas, formulaLabels: formulaLabels)
        self.customizeDesprictionLabels(calcLabels, descriptionLabels: calcDescriptionLabels)
        self.customizeFormulas(calcFormulas, formulaLabels: calcFormulaLabels)
    }
}
