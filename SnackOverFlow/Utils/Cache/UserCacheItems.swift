//
//  UserCacheItems.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 23.06.2023.
//

import Foundation

enum UserCacheKeys: String {
    case onboard = "onboard"
    
    static let dummyValue = "save_onboard"
}

protocol UserCacheProtocol {
    
    func read(key: UserCacheKeys) -> String
    func save(key: UserCacheKeys, value: String)
    func remove(key: UserCacheKeys)
}

extension UserCacheProtocol {
    
    func read(key: UserCacheKeys) -> String {
        guard let value = UserDefaults.standard.value(forKey: key.rawValue) as? String else { return "" }
        return value
    }
    
    func save(key: UserCacheKeys, value: String) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    func remove(key: UserCacheKeys) {
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}

struct UserDefaultsCach: UserCacheProtocol {
    
}
