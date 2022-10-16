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
    var location: String
    
    init(username: String, name: String, image: Image? = nil, date: Date, feeling: String, description: String, activity: String, location: String) {
        self.username = username
        self.name = name
        self.image = image
        self.date = date
        self.feeling = feeling
        self.description = description
        self.activity = activity
        self.location = location
    }
}

let today = Date()

let Emotions: [Emotion] = [
    Emotion(username: "megannesium", name: "Megan Yee", date: today, feeling: "smile", description: "Today I participated in Cal Hacks 9.0 and was able to learn about SwiftUI, feeling super excited!", activity: "Participating in Calhacks", location: "Richmond District"),
    Emotion(username: "megannesium", name: "Michael Ng", date: Calendar.current.date(byAdding: .minute, value: -30, to: today)!, feeling: "smile", description: "Socialised a ton today and met super cool people, love being in SF city", activity: "Networking", location: "Mission District"),
    Emotion(username: "megannesium", name: "Kester Tan", date: Calendar.current.date(byAdding: .minute, value: -55, to: today)!, feeling: "frown", description: "Missed my flight today because I woke up late, feeling super unmotivated and annoyed!", activity: "Catching a plane", location: "SoMa"),
    Emotion(username: "megannesium", name: "Joel Wong", date: Calendar.current.date(byAdding: .minute, value: -89, to: today)!, feeling: "slight_frown", description: "My friend kicked me this morning to wake me up and I was annoyed", activity: "Sleeping", location: "Pacific Heights"),
    Emotion(username: "megannesium", name: "Nita", date: Calendar.current.date(byAdding: .minute, value: -120, to: today)!, feeling: "slight_smile", description: "Ate some bagels with egg and bacon this morning, feeling pretty energised for the day", activity: "Eating", location: "Hayes"),
    Emotion(username: "megannesium", name: "Alicia Keys", date: Calendar.current.date(byAdding: .minute, value: -147, to: today)!, feeling: "slight_smile", description: "Woke up feeling a little gloomy but I have a whole day of exciting events to look forward to!", activity: "Preparing for my day", location: "Noe Valley"),
    Emotion(username: "megannesium", name: "Will Smith", date: Calendar.current.date(byAdding: .minute, value: -183, to: today)!, feeling: "frown", description: "Lost my car keys today and was unable to drive out to watch my favourite band play live", activity: "Losing my keys", location: "The Castro"),
    Emotion(username: "megannesium", name: "Lily Collins", date: Calendar.current.date(byAdding: .minute, value: -200, to: today)!, feeling: "smile", description: "It's Day 46 in Paris and I'm feeling like a true Parisian, eating a croissant and lovin' life", activity: "Exploring the city", location: "Paris"),
    Emotion(username: "megannesium", name: "David Ng", date: Calendar.current.date(byAdding: .hour, value: -12, to: today)!, feeling: "slight_smile", description: "Going abroad for college and feeling excited but nervous for it!", activity: "Going abroad", location: "Marina"),
]
