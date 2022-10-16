//
//  DoneView.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI

struct DoneView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Thanks for journaling Joel")
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.black)
                .font(.custom("Lexend-Bold", size: 32))
                .padding(.top, 28)
                .padding(.horizontal)
                .padding(.trailing, 28)
            Spacer()
            
            HStack {
                Text("Smile more today!")
                          .font(.custom("Lexend-Semibold", size: 24))

                Spacer()
                Image("smile").resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(height: 120)
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .padding(.horizontal)
            .padding(.top, 10)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}
