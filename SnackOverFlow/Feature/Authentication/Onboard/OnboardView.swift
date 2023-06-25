//
//  OnboardView.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 21.06.2023.
//

import SwiftUI

struct OnboardView: View {
    
    @StateObject var onboardViewModel = OnboardViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TabView(
                    selection: $onboardViewModel.currentIndex,
                    content: {
                        ForEach((0..<OnboardModel.items.count), id: \.self) { value in
                            SliderCard(model: OnboardModel.items[value])
                        }
                    })
                .tabViewStyle(.page(indexDisplayMode: .never))
                Spacer()
                HStack {
                    ForEach((0...2), id: \.self) { index in
                        if (index == onboardViewModel.currentIndex) {
                            IndicatorRectangle(width: 44)
                                .foregroundColor(.coolney)
                        } else {
                            IndicatorRectangle(width: 16)
                                .foregroundColor(.karl)
                        }
                    }
                }.frame(height: ViewHeight.indicator)
                
                NavigationLink(isActive:
                                $onboardViewModel.isHomeRedirect) {
                    WelcomeView()
                        .ignoresSafeArea()
                } label: {
                    NormalButton(onTap: {
                        onboardViewModel.saveUserLoginAndRedirect()
                    }, title: LocaleKeys.Buttons.getStarted.rawValue)
                    .padding(.all, 16)
                }.onAppear {
                    onboardViewModel.checkUserFirstTime()
                }
            }
        }
        
    }
}

private struct SliderCard : View {
    var model: OnboardModel
    var body: some View {
        VStack {
            Image(model.image)
                .resizable()
                .frame(width: 390, height: 390)
            Text(model.description)
                .font(.system(size: 28, weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.peach)
        }
    }
}

private struct IndicatorRectangle: View {
    var width: Double
    var body: some View {
        Rectangle()
            .frame(width: width).cornerRadius(20)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
