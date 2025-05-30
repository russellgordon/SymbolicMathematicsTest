//
//  Circle.swift
//  SymbolicMathematicsTest
//
//  Created by Russell Gordon on 2025-05-30.
//

import Foundation

struct Circle {
    
    // MARK: Stored properties
    var radius: Double = 0.0
    
    // MARK: Computed properties
    
    // Radius formatted to two decimal places
    var formattedRadius: String {
        return radius.formatted(.number.precision(.fractionLength(2)))
    }
    
    // Area of a circle, given the radius
    var area: Double {
        return Double.pi * radius * radius
    }
    
    // Area formatted to one decimal place
    var formattedArea: String {
        return area.formatted(.number.precision(.fractionLength(1)))
    }
    
}
