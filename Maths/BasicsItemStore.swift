//
//  BasicsItemStore.swift
//  Maths
//
//  Created by Peter and Fuzzy on 06.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit

struct BasicsItemStore {
    let rows = [
        0: "Exponent Rules",
        1: "Log Rules",
        2: "Trigonometry"
    ]
    
    // the number of components in rows and segues must be equal!
    // every component of segues must be used as a segue identifier in the IB!
    
    let segues = [
        0: "showExponentRules",
        1: "showLogRules",
        2: "showTrigonometry"
    ]
}
