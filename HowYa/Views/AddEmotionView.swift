//
//  AddEmotionView.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI

struct AddEmotionView: View {
    @State private var progress = 0.0
    
    var body: some View {
        VStack {
            ProgressView(value: progress, total: 100) 
            Spacer()
            HStack{
                Image("frown").resizable().aspectRatio(contentMode: .fit)
                Image("slight_frown").resizable().aspectRatio(contentMode: .fit)
                Image("neutral").resizable().aspectRatio(contentMode: .fit)
                Image("slight_smile").resizable().aspectRatio(contentMode: .fit)
                Image("smile").resizable().aspectRatio(contentMode: .fit)
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
        AddEmotionView()
    }
}
