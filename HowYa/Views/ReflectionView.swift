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
            .foregroundColor(.darkPink)
            .padding(10)
    }
}

struct ReflectionView: View {
    @State var reflection: String = ""
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("How are you feeling today?")
                    .foregroundColor(.black)
                    .font(.custom("Lexend-Bold", size: 28))
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField(
                        "Write your reflection here...",
                        text: $reflection
                    ).underlineTextField()
                }.padding()
            }
            .padding(.leading, 18)
            .padding(.trailing, 18)
        }
    }
}

struct ReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionView()
    }
}
