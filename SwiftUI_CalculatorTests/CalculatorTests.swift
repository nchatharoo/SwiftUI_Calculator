//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Nadheer on 19/10/2024.
//

import XCTest
@testable import SwiftUI_Calculator

final class CalculatorTests: XCTestCase {

    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }
    
    func test_addition() {
        XCTAssertEqual(calculator.add(2, 3), 5)
    }
    
    func test_substract() {
        XCTAssertEqual(calculator.substract(3, 2), 1)
    }
    
    func test_multiply() {
        XCTAssertEqual(calculator.multiply(2, 3), 6)
    }

}
