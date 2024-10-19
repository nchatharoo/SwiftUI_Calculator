//
//  CalculatorView.swift
//  SwiftUI_Calculator
//
//  Created by Nadheer on 19/10/2024.
//

import SwiftUI

struct CalculatorView: View {
    @StateObject private var viewModel = CalculatorViewModel(calculator: Calculator())
    
    let buttons = [
        ["7", "8", "9", "/"],
        ["4", "5", "6", "*"],
        ["1", "2", "3", "-"],
        ["0", ".", "=", "+"],
        ["√", "^", "C"]
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text(viewModel.displayText)
                .font(.largeTitle)
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
            
            ForEach(buttons, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { button in
                        Button(action: {
                            self.buttonTapped(button)
                        }) {
                            Text(button)
                                .font(.title)
                                .frame(width: 80, height: 80)
                                .background(Color.gray)
                                .foregroundColor(.white)
                                .cornerRadius(40)
                        }
                    }
                }
            }
        }
        .padding()
    }
    
    func buttonTapped(_ symbol: String) {
        if let number = Double(symbol) {
            viewModel.inputNumber(number)
        } else {
            switch symbol {
            case "+", "-", "*", "/", "√", "^":
                viewModel.performOperation(symbol)
            case "=":
                viewModel.calculateResult()
            case "C":
                viewModel.clear()
            default:
                break
            }
        }
    }
}

#Preview {
    CalculatorView()
}
