//
//  EmailButton.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 20.06.2023.
//

import SwiftUI

struct EmailButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        }
    label: {
        HStack {
            Spacer()
            Text(LocaleKeys.Auth.email.rawValue.locale())
            Spacer()
        }
        .tint(Color.peach)
        .font(.system(size: 16, weight: .semibold))
        .padding(.all, 16)
    }
    .buttonBorderShape(.roundedRectangle)
    .controlSize(.large)
    .background(.white)
    .cornerRadius(8)
    }
}

struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton(onTap: {})
    }
}
