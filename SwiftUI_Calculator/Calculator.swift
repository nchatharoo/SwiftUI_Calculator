//
//  Calculator.swift
//  SwiftUI_Calculator
//
//  Created by Nadheer on 19/10/2024.
//

import Foundation

class Calculator {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func substract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    func divide(_ a: Double, _ b: Double) throws -> Double {
        guard b != 0 else { throw CalculatorError.divisionByZero }
        return a / b
    }
    
    func squareRoot(_ a: Double) -> Double {
        return sqrt(a)
    }
}


enum CalculatorError: Error {
    case divisionByZero
}
