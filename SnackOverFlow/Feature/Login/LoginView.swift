//
//  LoginView.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 21.06.2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(ImageItems.Authentication.login.rawValue)
            Text(LocaleKeys.Login.welcome.rawValue.locale()).foregroundColor(.teflon)
                .font(.system(size: 28, weight: .bold))
            
            HTextField(title: LocaleKeys.Login.email.rawValue, image: Icons.mail.rawValue)
            
            HTextSecureField(title: LocaleKeys.Login.password.rawValue, image: Icons.lock.rawValue)
            
            Divider()
                .background(.white).opacity(0.8)
                .frame(height: 2).padding(.all, 20)
            
            NormalButton(onTap: {}, title: LocaleKeys.Buttons.createAccount.rawValue)
            
            Text(LocaleKeys.Login.termsAndCondition.rawValue.locale())
                .foregroundColor(.gandalf)
                .tint(.cornFlowBlue)
                .font(.caption)
                .environment(\.openURL, OpenURLAction(handler: { url in
                    return .discarded
                })).padding(.top, 16)
            
            Spacer()
        }.padding(.all, 16)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

private struct HTextField: View {
    let title: String
    let image: String
    
    var body: some View {
        HStack {
            Image(image)
            TextField(title.locale(), text: .constant(""))
        }.modifier(TextFieldModifiers())
    }
}

private struct HTextSecureField: View {
    let title: String
    let image: String
    
    var body: some View {
        HStack {
            Image(image)
            SecureField(title.locale(), text: .constant(""))
        }.modifier(TextFieldModifiers())
    }
}
