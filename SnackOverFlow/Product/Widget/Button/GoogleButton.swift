//
//  GoogleButton.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 20.06.2023.
//

import SwiftUI

struct GoogleButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        }
    label: {
        HStack {
            Image(Icons.google.rawValue)
            Text(LocaleKeys.Auth.google.rawValue.locale())
            Spacer()
        }
        .tint(.black)
        .font(.title2)
        .padding(.all, 16)
    }
    .buttonBorderShape(.roundedRectangle)
    .controlSize(.large)
    .background(.white)
    .cornerRadius(8)
    }
}

struct GoogleButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleButton(onTap: {})
    }
}
