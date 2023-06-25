//
//  OnboardViewModel.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 23.06.2023.
//

import Foundation

final class OnboardViewModel: ObservableObject {
 
    @Published var currentIndex: Int = 0
    @Published var isHomeRedirect: Bool = false
    
    private let cache = UserDefaultsCach()
    
    private func isUserFirstLogin() -> Bool {
        cache.read(key: .onboard).isEmpty
    }
    
    func checkUserFirstTime() {
        guard !isUserFirstLogin() else {
            updateCacheFirstLogin()
            return
        }
        redirectToHome()
    }
    
    func saveUserLoginAndRedirect() {
        updateCacheFirstLogin()
        redirectToHome()
    }
    
    private func redirectToHome() {
        isHomeRedirect = true
    }
    
    private func updateCacheFirstLogin() {
        cache.save(key: .onboard, value: UserCacheKeys.dummyValue)
    }
    
    private func removeCacheFirstLogin() {
        cache.remove(key: .onboard)
    }
}
