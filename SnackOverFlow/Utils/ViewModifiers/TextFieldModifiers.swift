//
//  TextFieldModifiers.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 22.06.2023.
//

import SwiftUI

struct TextFieldModifiers: ViewModifier {
    
    func body(content: Content) -> some View {
        return content.padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1.5)
                    .padding(.horizontal)
            ).foregroundColor(.karl)
    }
}

