//
//  FacebookButton.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 20.06.2023.
//

import SwiftUI

struct FacebookButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        }
    label: {
        HStack {
            Image(Icons.facebook.rawValue)
            Text(LocaleKeys.Auth.facebook.rawValue.locale())
            Spacer()
        }
        .tint(.white)
        .background(Color.deepSkyBlue)
        
    }
    .buttonStyle(.borderedProminent)
    .buttonBorderShape(.roundedRectangle)
    .controlSize(.large)
    }
}

struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton(onTap: {})
    }
}
