//
//  Tab.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import SwiftUI

struct Tab: View {
    
    @EnvironmentObject var viewModel: UserViewModel
    @State private var selection: Tab = Tab.main
    @State private var isShowingProfile = false
    
    enum Tab {
        case main
        case feed
        case search
        case notify
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                
                MainHome()
                    .tag(Tab.main)
                    .tabItem {
                        Label("Main", systemImage: "house.fill")
                    }
                
                FeedHome()
                    .tag(Tab.feed)
                    .tabItem {
                        Label("Feed", systemImage: "message.fill")
                    }
                
                SearchHome()
                    .tag(Tab.search)
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                
                NotifyHome()
                    .tag(Tab.notify)
                    .tabItem {
                        Label("Notify", systemImage: "exclamationmark.circle")
                    }
            }
            .toolbar {
                Button {
                    isShowingProfile.toggle()
                } label: {
                    Image(systemName: "person.circle")
                }
            }
            .navigationTitle("ARENA")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $isShowingProfile) {
                Profile(user: viewModel.user)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
