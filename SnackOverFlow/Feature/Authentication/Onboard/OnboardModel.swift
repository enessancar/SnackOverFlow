//
//  OnboardModel.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 21.06.2023.
//

import Foundation

struct OnboardModel: Identifiable {
    var id: UUID = UUID()
    
    let image: String
    let description: String
    
    static let items: [OnboardModel] = [
        OnboardModel(image: "img_hand_pick", description: "Hand-pickle high quality snacks."),
        OnboardModel(image: "img_shop", description: "Shop global. Mind-blownly affordable."),
        OnboardModel(image: "img_deliver", description: "Deliver on the promise of time.")
    ]
}
