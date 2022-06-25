//
//  ProfileViewModel.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import Foundation

class UserViewModel: ObservableObject {
    
    @Published var user = UserModel.default
    @Published var isSignIn = false
    
    
    func signOut() {
        isSignIn = false
    }
    
    func signIn() {
        isSignIn = true
    }
}
