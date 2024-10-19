//
//  CalculatorViewModel.swift
//  SwiftUI_Calculator
//
//  Created by Nadheer on 19/10/2024.
//

import Foundation

class CalculatorViewModel {
    @Published var displayText: String = "0"
    
    private var calculator: CalculatorProtocol
    private var currentNumber: Double = 0
    private var previousNumber: Double = 0
    private var operation: ((Double, Double) -> Double)?
    
    init(calculator: CalculatorProtocol) {
        self.calculator = calculator
    }
    
    func inputNumber(_ number: Double) {
        currentNumber = number
        displayText = "\(number)"
    }
    
    func performOperation(_ operationType: String) {
        previousNumber = currentNumber
        displayText = "0"
        
        switch operationType {
        case "+":
            operation = calculator.add
        case "-":
            operation = calculator.substract
        case "*":
            operation = calculator.multiply
        case "/":
            operation = { a, b in
                do {
                    return try self.calculator.divide(a, b)
                } catch {
                    print(CalculatorError.divisionByZero)
                    return 0
                }
            }		    
        default:
            break
        }
    }
    
    func formatResult(_ result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        } else {
            return String(result)
        }
    }
    
    func calculateResult() {
        guard let operation = operation else { return }
        let result = operation(previousNumber, currentNumber)
        displayText = formatResult(result)
    }
}
