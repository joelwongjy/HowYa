//
//  AddEmotionView.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI

struct AddEmotionView: View {
    @State private var progress = 0.0
    @State var selectedEmoji: Emoji = Emoji.happy
    
    var body: some View {
        VStack {
            ProgressView(value: progress, total: 100)
            Text("HowYa feeling today?")
                .font(.custom("Lexend-SemiBold", size: 28))
                .padding(.leading, 20)
                .padding(.top, 30)
            HStack{
                Image("frown").resizable().aspectRatio(contentMode: .fit)
                    .padding(5)
                    .background(selectedEmoji == Emoji.sad ? Color.black : Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .onTapGesture {
                        selectedEmoji = Emoji.sad
                    }
                
                Image("slight_frown").resizable().aspectRatio(contentMode: .fit)
                    .padding(5)
                    .background(selectedEmoji == Emoji.slightlySad ? Color.black : Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .onTapGesture {
                        selectedEmoji = Emoji.slightlySad
                    }
                
                Image("neutral").resizable().aspectRatio(contentMode: .fit)
                    .padding(5)
                    .background(selectedEmoji == Emoji.neutral ? Color.black : Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .onTapGesture {
                        selectedEmoji = Emoji.neutral
                    }
                
                Image("slight_smile").resizable().aspectRatio(contentMode: .fit)
                    .padding(5)
                    .background(selectedEmoji == Emoji.slightlyHappy ? Color.black : Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .onTapGesture {
                        selectedEmoji = Emoji.slightlyHappy
                    }
                
                Image("smile").resizable().aspectRatio(contentMode: .fit)
                    .aspectRatio(contentMode: .fit)
                    .padding(5)
                    .background(selectedEmoji == Emoji.happy ? Color.black : Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .onTapGesture {
                        selectedEmoji = Emoji.happy
                    }
            }.padding(.horizontal, 12)
            Spacer()
            HStack{
                Text("Next")
                    .foregroundColor(.white)
                    .font(.custom("Montserrat-Semibold", size: 16))
                Spacer()
                Image(systemName: "chevron.right.2")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .modifier(Buttons())
            .padding(.horizontal, 12)
            .padding(.vertical, 40)
        }
    }
}

struct AddEmotionView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmotionView(selectedEmoji: Emoji.sad)
    }
}
