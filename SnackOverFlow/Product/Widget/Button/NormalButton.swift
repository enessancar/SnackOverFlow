//
//  NormalButton.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 21.06.2023.
//

import SwiftUI

struct NormalButton: View {
    var onTap: () -> Void
    var title: String
    
    var body: some View {
        Button {
            onTap()
        }
    label: {
        HStack {
            Spacer()
            Text(title)
            Spacer()
        }
        .tint(.white)
        .font(.system(size: 16, weight: .semibold))
        .padding(.all, 16)
    }
    .buttonBorderShape(.roundedRectangle)
    .controlSize(.large)
    .background(Color.peach)
    .cornerRadius(8)
    }
}

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(onTap: {
            
        }, title: "Sample")
    }
}
