//
//  UserModel.swift
//  HowYa
//
//  Created by Megan Yee on 16/10/22.
//

import Foundation
import SwiftUI

struct User {
    let id = UUID()
    let email: String
    let name: String
    let password: String
    let profilePic: String?
    let friends: String[]?
    let entries: Emotion[]?
    
    init(email: String, name: String, password: String, profilePic: String? = nil, friends: String[]? = [], entries: Emotion[]? = []) {
        self.email = email
        self.name = name
        self.password = password
        self.profilePic = profilePic
        self.friends = friends
        self.entries = entries
    }
}
