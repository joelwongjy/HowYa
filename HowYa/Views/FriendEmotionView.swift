//
//  FriendEmotionView.swift
//  HowYa
//
//  Created by Joel Wong on 15/10/22.
//

import SwiftUI

struct FriendEmotionView: View {
    @State var menuOpened = false
    @State var from = ""
    @State var to = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem()], spacing: 20, content: {
                    ForEach(Emotions, id: \.id) { emotion in
                        EmotionListView(emotion: emotion)
                        Divider()
                    }
                })
                .padding(.horizontal, 25)
               }
            .background(Color("F2F2F2"))
        }
        
        
        
        
    }
}

struct FlightsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendEmotionView()
    }
}
