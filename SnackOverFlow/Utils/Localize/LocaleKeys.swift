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
}

extension String {
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
