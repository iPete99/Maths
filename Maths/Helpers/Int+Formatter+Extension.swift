//
//  IntExtension.swift
//  Maths
//
//  Created by Peter and Fuzzy on 04.08.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit

extension Int {
    private func calculateFactiorial(_ n: Int) -> Int? {
        if n == 1 {
            return 1
        } else {
            var (n, overflow) = (n, false)
            (n, overflow) = n.multipliedReportingOverflow(by: calculateFactiorial(n - 1)!)
            if overflow {return nil} else {return n}
        }
    }
    
    var fac: Int? {
        if self == 0 {return 1} else if self < 0 {return nil} else {
            return self.calculateFactiorial(self)
        }
    }
    
    private func binomialCoefficient(n: Int, k: Int) -> Int? {
        if n < 0 || k < 0 {
            return nil
        } else if k > n {
            return 0
        }
        
        let k = [k, n - k].min()!
        
        if k == 0 {return 1} else {
            var (n, overflow) = (n, false)
            (n, overflow) = n.multipliedReportingOverflow(by: binomialCoefficient(n: n - 1, k: k - 1)!)
            if overflow {return -1} else {
                return n / k
            }
        }
    }
    
    func choose(_ k: Int) -> Int? {
        return self.binomialCoefficient(n: self, k: k)
    }
}

extension Formatter {
    static let withSpaceSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension BinaryInteger {
    var formattedWithSpaceSeparator: String {
        return Formatter.withSpaceSeparator.string(for: self) ?? ""
    }
}
