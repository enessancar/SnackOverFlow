//
//  LocaleKeys.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 20.06.2023.
//

import SwiftUI

struct LocaleKeys {
    
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case email = "signInEmail"
    }
    
    enum Buttons: String {
        case getStarted = "getStarted"
        case createAccount = "createAccount"
    }
    
    enum Login: String {
        case welcome = "welcome"
        case email = "email"
        case password = "password"
        case termsAndCondition = "termsAndCondition"
    }
    
    enum TabView: String {
        case home = "tabHome"
        case market = "tabMarket"
        case create = "tabCreate"
        case wishlist = "tabWishlist"
        case account = "tabAccount"
    }
}

extension String {
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
