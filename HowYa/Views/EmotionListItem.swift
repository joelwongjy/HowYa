//
//  EmotionListItem.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI

struct EmotionListItem: View {
    var emotion: Emotion
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack () {
                Image("joel")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                VStack (alignment: .leading) {
                    HStack {
                        Text(emotion.name)
                            .font(.custom("Lexend-Regular", size: 14))
                        Spacer()
                        Text(emotion.date, style: .relative)
                            .font(.custom("Lexend-Regular", size: 18))
                    }
                    Text(emotion.feeling)
                        .font(.custom("Lexend-Semibold", size: 18))

                }
            }
            Text(emotion.description)
                .font(.custom("Lexend-Regular", size: 14))
        }
    }
}

struct EmotionListItem_Previews: PreviewProvider {
    static var previews: some View {
        EmotionListItem(emotion: Emotions[0])
    }
}
