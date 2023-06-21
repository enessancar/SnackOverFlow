//
//  OnboardView.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 21.06.2023.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
        VStack {
            Spacer()
            
            TabView {
                VStack {
                    Image("img_hand_pick")
                    Text("Hand-pickle high quality snacks.")
                }
                VStack {
                    Image("img_shop").resizable()
                    Text("Shop global. Mind-blownly affordable.")
                }
                VStack {
                    Image("img_deliver")
                    Text("Deliver on the promise of time.")
                }
            }.tabViewStyle(.page)
            Spacer()
            HStack {
                IndicatorRectangle(width: 40)
                IndicatorRectangle(width: 20)
                IndicatorRectangle(width: 20)
            }.frame(height: 20)
            NormalButton(onTap: {
                
            }, title: "Get Started")
            .padding(.all, 16)
        }
    }
}

private struct IndicatorRectangle: View {
    var width: Double
    var body: some View {
        Rectangle().frame(width: width).cornerRadius(20)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
