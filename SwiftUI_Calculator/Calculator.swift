//
//  Calculator.swift
//  SwiftUI_Calculator
//
//  Created by Nadheer on 19/10/2024.
//

import Foundation

public protocol CalculatorProtocol {
    func add(_ a: Double, _ b: Double) -> Double
    func substract(_ a: Double, _ b: Double) -> Double
    func multiply(_ a: Double, _ b: Double) -> Double
    func divide(_ a: Double, _ b: Double) throws -> Double
    func squareRoot(_ a: Double) throws -> Double
    func power(_ a: Double, _ b: Double) -> Double
}

class Calculator: CalculatorProtocol {
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
    
    func squareRoot(_ a: Double) throws -> Double {
        guard a >= 0 else { throw CalculatorError.invalidInput }
        return sqrt(a)
    }
    
    func power(_ a: Double, _ b: Double) -> Double {
        return pow(a, b)
    }
}


public enum CalculatorError: Error {
    case divisionByZero
    case invalidInput
}
