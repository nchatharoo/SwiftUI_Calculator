//
//  CalculatorViewModelTests.swift
//  SwiftUI_CalculatorTests
//
//  Created by Nadheer on 19/10/2024.
//

import XCTest
@testable import SwiftUI_Calculator

final class CalculatorViewModelTests: XCTestCase {
    var viewModel: CalculatorViewModel!
    var mockCalculator: MockCalculator!
    
    override func setUp() {
        super.setUp()
        mockCalculator = MockCalculator()
        viewModel = CalculatorViewModel(calculator: mockCalculator)
    }
    
    override func tearDown() {
        viewModel = nil
        mockCalculator = nil
        super.tearDown()
    }
    
    func test_additionOperation() {
        viewModel.inputNumber(5)
        viewModel.performOperation("+")
        viewModel.inputNumber(3)
        viewModel.calculateResult()
        
        XCTAssertEqual(viewModel.displayText, "8")
    }
    
    func test_subtractionOperation() {
        viewModel.inputNumber(10)
        viewModel.performOperation("-")
        viewModel.inputNumber(4)
        viewModel.calculateResult()
        
        XCTAssertEqual(viewModel.displayText, "6")
    }
}
