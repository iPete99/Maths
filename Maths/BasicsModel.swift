//
//  BasicsExponentModel.swift
//  Maths
//
//  Created by Peter and Fuzzy on 16.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit
import iosMath

struct ExponentLabel {
    
    let descriptionLabels = [
        0: "Multiplication",
        1: "Division",
        2: "Power of power",
        3: "Power of product",
        4: "Power of fraction",
        5: "Fractional",
        6: "Negative",
        7: "Zero"
    ]
    
    let formulaLabels = [
        0: "a^m \\cdot a^n = a^{m + n}",
        1: "a^m \\div a^n = a^{m - n}",
        2: "(a^m)^{^n} = a^{mn}",
        3: "(a \\cdot b)^m = a^m \\cdot b^m",
        4: "\\left(\\frac{a}{b}\\right)^m = \\frac{a^m}{b^m}",
        5: "a^{\\frac{m}{n}} = \\sqrt[n]{a^m}",
        6: "a^{-m} = \\frac{1}{a^m}",
        7: "a^0 = 1"
    ]
}

struct LogLabel {
    
    let descriptionLabels = [
        0: "Multiplication",
        1: "Division",
        2: "Power",
        3: "Identity",
        4: "Natural Log",
        5: "Exponent of Log",
        6: "Zero",
        7: "Change of Base"
    ]
    
    let formulaLabels = [
        0: "\\log_a(m \\cdot n) = \\log_a(m) + \\log_a(n)",
        1: "\\log_a{\\left(\\frac{m}{n}\\right)} = \\log_a(m) - \\log_a(n)",
        2: "\\log_a{\\left(m^k\\right)} = k \\cdot \\log_a(m)",
        3: "\\log_a(a) = 1",
        4: "\\log_e(m) = \\ln(m), e^k = \\lim_{x\\to\\infty}\\left(1 + \\frac{k}{x}\\right)^x",
        5: "a^{\\log_a{\\left(a^k\\right)}} = k",
        6: "\\log_a(1) = 0",
        7: "\\log_a(m) = \\frac{\\log_b(m)}{\\log_b(a)}"
    ]
}
