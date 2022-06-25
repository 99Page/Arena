//
//  ContentView.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: UserViewModel
    
    var body: some View {
        
        Group {
            if !viewModel.isSignIn {
                Login()
            } else {
                Tab()
            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(UserViewModel())
            
            ContentView()
                .environmentObject(UserViewModel())
        }
        
    }
}
