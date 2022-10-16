//
//  HomeView.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Hey Joel, HowYa feeling today?")
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.black)
                .font(.custom("Lexend-Bold", size: 32))
                .padding(.bottom, 28)
                .padding(.trailing, 28)
            HStack {
                Image(systemName: "location.north.circle.fill")
                    .font(.system(size: 16))
                Text("Ponderosa Park")
                    .font(.custom("Lexend-Medium", size: 16))
            }
            
            HStack {
                Text("Your community is feeling neutral today")
                          .font(.custom("Lexend-Semibold", size: 24))

                Spacer()
                Image("neutral").resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .frame(height: 120)
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .padding(.horizontal)
            .padding(.top, 10)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}
