//
//  MainTabView.swift
//  SnackOverFlow
//
//  Created by Enes Sancar on 26.06.2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ForEach(HomeTabItem.tabItems) { item in
                item.page.tabItem {
                    TabIconModel(model: item.model)
                }
            }
        }.accentColor(.peach)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}


private struct TabIconModel: View {
    let model: TabModel
    var body: some View {
        VStack {
            Image(model.icon.rawValue)
            Text(model.title.rawValue.locale())
        }
    }
}
