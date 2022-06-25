//
//  ArenaApp.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import SwiftUI

@main
struct ArenaApp: App {
    
    @StateObject var userViewModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userViewModel)
        }
    }
}
