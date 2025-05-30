//
//  ContentView.swift
//  SymbolicMathematicsTest
//
//  Created by Russell Gordon on 2025-05-30.
//

import SwiftUI
import LaTeXSwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    
    // The current circle being described by the user
    @State var currentCircle = Circle()

    // MARK: Computed properties
        
    // The user interface
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {

            // INPUT
            
            Text("Radius")
                .font(.title3)
                .bold()
            Text("\(currentCircle.formattedRadius)")
                .font(.title3)
            Slider(value: $currentCircle.radius, in: 0...100, step: 0.01)
                .padding(.bottom, 20)
            
            // OUTPUT
            
            // Plain output...
            Text("Area of a circle")
                .font(.title3)
                .bold()
            
            Text("\(currentCircle.formattedArea) square units")
                .padding(.bottom, 20)

            // Formatted output, using LaTeX...
            Text("Area of a circle (formatted)")
                .font(.title3)
                .bold()
            
            LaTeX("$A=\\pi r^2$")
            LaTeX("$A=\\pi (\(currentCircle.formattedRadius))^2$")
            LaTeX("$A=\(currentCircle.formattedArea) \\text{ square units}$")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
