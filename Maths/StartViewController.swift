//
//  ViewController.swift
//  Maths
//
//  Created by Peter and Fuzzy on 06.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIImageView!
    @IBOutlet var stackView: UIStackView!
    @IBOutlet var stackViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet var stackViewTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // title
        self.title = "Start"
        
        // background view
        let rotationAngle: CGFloat = CGFloat(50).degreesToRadians()
        let backgroundImageRotation = CGAffineTransform(rotationAngle: rotationAngle)
        self.backgroundView.alpha = 0.25
        self.backgroundView.transform = backgroundImageRotation
        
        // spacing between the views
        let spacingDivider: CGFloat = 6.5
        self.stackView.spacing = self.stackView.frame.height / spacingDivider
        self.stackViewBottomConstraint.constant = self.stackView.spacing
        self.stackViewTopConstraint.constant = self.stackView.spacing
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

