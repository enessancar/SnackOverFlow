//
//  AppleButton.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 20.06.2023.
//

import SwiftUI

struct AppleButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        }
    label: {
        HStack {
            Image(Icons.apple.rawValue)
            Text(LocaleKeys.Auth.apple.rawValue.locale())
            Spacer()
        }
        .tint(.white)
        .font(.title2)
        .padding(.all, 16)
    }
    .buttonBorderShape(.roundedRectangle)
    .controlSize(.large)
    .background(.black)
    .cornerRadius(8)
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton(onTap: {})
    }
}
