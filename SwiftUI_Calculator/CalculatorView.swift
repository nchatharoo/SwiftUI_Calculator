//
//  CalculatorView.swift
//  SwiftUI_Calculator
//
//  Created by Nadheer on 19/10/2024.
//

import SwiftUI

struct CalculatorView: View {
    @StateObject private var viewModel = CalculatorViewModel(calculator: Calculator())
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    CalculatorView()
}
