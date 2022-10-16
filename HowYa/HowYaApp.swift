//
//  HowYaApp.swift
//  HowYa
//
//  Created by Joel Wong on 15/10/22.
//

import SwiftUI

@main
struct HowYaApp: App {
    @StateObject var viewRouter = ViewRouter()

    var body: some Scene {
        WindowGroup {
            MainView(viewRouter: viewRouter)
        }
    }
}
