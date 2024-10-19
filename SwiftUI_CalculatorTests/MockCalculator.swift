//
//  MockCalculator.swift
//  SwiftUI_CalculatorTests
//
//  Created by Nadheer on 19/10/2024.
//

import Foundation
import SwiftUI_Calculator

class MockCalculator: CalculatorProtocol {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func substract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        a * b
    }
    
    func divide(_ a: Double, _ b: Double) throws -> Double {
        if b == 0 { throw CalculatorError.divisionByZero }
        return a / b
    }
    
    func squareRoot(_ a: Double) throws -> Double {
        if a <= 0 { throw CalculatorError.invalidInput }
        return sqrt(a)
    }
    
    func power(_ a: Double, _ b: Double) -> Double {
        return pow(a, b)
    }
}
