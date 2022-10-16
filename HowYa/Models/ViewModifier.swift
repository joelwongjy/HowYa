//
//  ViewModifier.swift
//  HowYa
//
//  Created by Joel Wong on 15/10/22.
//

import SwiftUI

// View modifier for the black buttons
struct Buttons: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .frame(height: 60)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

struct EmojiButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

struct EmojiButtonSelected: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .background(Color("DarkPurple"))
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}


struct FlightDetailsMenu: ViewModifier {
    var height: Int
    
    func body(content: Content) -> some View {
        
        content
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: CGFloat(self.height))
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .padding(.horizontal, 25)
    }
}
