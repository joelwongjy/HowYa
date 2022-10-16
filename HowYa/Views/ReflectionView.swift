//
//  ReflectionView.swift
//  HowYa
//
//  Created by Megan Yee on 16/10/22.
//

import SwiftUI

extension Color {
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
}
extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(Color("DarkPurple"))
            .padding(10)
    }
}

struct ReflectionView: View {
    @State var reflection: String = ""
    @State var activity: String = ""
    
    var body: some View {
        VStack(alignment: .trailing) {
            VStack(alignment: .leading) {
                Text("What did you do today?")
                    .foregroundColor(.black)
                    .font(.custom("Lexend-Bold", size: 28))
                HStack {
                    TextField(
                        "Watching Netflix, hiking, coding...",
                        text: $reflection
                    ).underlineTextField()
                }.padding()
                Text("Tell us more!")
                    .foregroundColor(.black)
                    .font(.custom("Lexend-Bold", size: 28))
                HStack {
                    TextField(
                        "I watched the latest season of Spy x Family",
                        text: $activity
                    ).underlineTextField()
                }.padding()
            }
            .padding(.leading, 18)
            .padding(.trailing, 18)
            NavigationLink(destination: DoneView()) {
                HStack{
                    Text("Done")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.horizontal, 16)
                        .modifier(Buttons())
                }
                .padding()
            }
        }
    }
}

struct ReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionView()
    }
}
