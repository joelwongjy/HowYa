//
//  ViewRouter.swift
//  HowYa
//
//  Created by Joel Wong on 16/10/22.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
}

enum Page {
    case home
    case friends
    case map
    case me
}
