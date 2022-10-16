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
    var activity: String
    
    init(username: String, name: String, image: Image? = nil, date: Date, feeling: String, description: String, activity: String) {
        self.username = username
        self.name = name
        self.image = image
        self.date = date
        self.feeling = feeling
        self.description = description
        self.activity = activity
    }
}

let Emotions: [Emotion] = [
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
    Emotion(username: "megannesium", name: "Megan Yee", date: Date(), feeling: "Happy as a butterfly", description: "Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete. Today I met Joel so my life is complete.", activity: "Running..."),
]
