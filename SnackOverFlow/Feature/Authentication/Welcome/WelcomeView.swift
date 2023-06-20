//
//  WelcomeView.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 19.06.2023.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue).resizable()
            Color.black.opacity(0.3)
            VStack {
                Image(Icons.appLogo.rawValue)
                
                FacebookButton(onTap: {})
                    .padding(.top, 40)
            }.padding(10)
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().statusBar(hidden: true)
    }
}
