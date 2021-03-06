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
    
    let exponentModel = ExponentModel()
    let basicItemStore = BasicsItemStore()
    
    // label outlets
    @IBOutlet var label0: UILabel!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    
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
        
        self.title = self.basicItemStore.rows[0]
        
        let labels = [self.label0, self.label1, self.label2,
                      self.label3, self.label4, self.label5,
                      self.label6, self.label7
        ]
        let formulas = [self.formula0, self.formula1, self.formula2,
                        self.formula3, self.formula4, self.formula5,
                        self.formula6, self.formula7
        ]
        let descriptionLabels = self.exponentModel.descriptionLabels
        let formulaLabels = self.exponentModel.formulaLabels
        
        self.customizeDesprictionLabels(labels, descriptionLabels: descriptionLabels)
        self.customizeFormulas(formulas, formulaLabels: formulaLabels)
    }
}
