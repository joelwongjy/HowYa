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
                VStack (alignment: .leading, spacing: 0) {
                    HStack {
                        Text(emotion.name)
                            .font(.custom("Lexend-SemiBold", size: 18))
                        Spacer()
                        Text(emotion.date, style: .relative)
                            .font(.custom("Lexend-Regular", size: 14))
                        Image(emotion.feeling).resizable()
                            .aspectRatio(contentMode: .fit).frame(width: 32, height: 32)
                    }
                    Text(emotion.activity)
                        .font(.custom("Lexend-Light", size: 12))

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
