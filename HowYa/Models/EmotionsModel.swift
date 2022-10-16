//
//  EmotionModel.swift
//  HowYa
//
//  Created by Joel Wong on 15/10/22.
//

import Foundation
import SwiftUI


enum Emoji {
    case happy, slightlyHappy, neutral, slightlySad, sad
}

struct Emotion {
    let id = UUID()
    let username: String
    let name: String
    let image: Image?
    var date: Date
    var feeling: String
    var description: String
    
    init(username: String, name: String, image: Image? = nil, date: Date, feeling: String, description: String) {
        self.username = username
        self.name = name
        self.image = image
        self.date = date
        self.feeling = feeling
        self.description = description
    }
}

let Emotions: [Emotion] = [
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete."),
]
