//
//  FacebookButton.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 20.06.2023.
//

import SwiftUI

private enum StringItems: String {
    case facebookLogin = "Sign In with facebook"
}

struct FacebookButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        }
    label: {
        HStack {
            Image(Icons.facebook.rawValue)
            Text(StringItems.facebookLogin.rawValue)
            Spacer()
        }
        .tint(.white)
        .background(Color.deepSkyBlue)
        
    }
    .buttonStyle(.borderedProminent)
    .buttonBorderShape(.roundedRectangle)
    .controlSize(.large)
    .cornerRadius(8)
    }
}
