//
//  WelcomeView.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 19.06.2023.
//

import SwiftUI

public enum StringItems: String {
    case facebookLogin = "Sign In with facebook"
}

struct WelcomeView: View {
    
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue).resizable()
            Color.black.opacity(0.3)
            BodyView()
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().ignoresSafeArea(.all)
    }
}

private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image(Icons.appLogo.rawValue)
                Spacer()
                FacebookButton(onTap: {}).padding(.top, 40)
                GoogleButton(onTap: {}).padding(.top, 12)
                AppleButton(onTap: {}).padding(.top, 12)
                Divider()
                    .background(.white).opacity(0.8)
                    .frame(height: 2).padding(.all, 20)
                EmailButton(onTap: {})
                Spacer().frame(height: geometry.size.height * 0.1)
            }.padding(.all, 10)
        }
    }
}
