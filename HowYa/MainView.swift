//
//  MainView.swift
//  HowYa
//
//  Created by Joel Wong on 15/10/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            FriendEmotionView()
                .tabItem {
                    Label("Friends", systemImage: "list.dash")
                }
            
            AddEmotionView()
                .tabItem {
                    Label("Add", systemImage: "list.dash")
                }
            
            AppleParkMap()
                .tabItem {
                    Label("Map", systemImage: "list.dash")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
