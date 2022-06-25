//
//  Login.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import SwiftUI

struct Login: View {
    
    @EnvironmentObject var viewModel: UserViewModel
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            
            TextPlaceholder(text: $email,
                            placeholder: Text("Email"),
                            imageSource: "envelope")
            
            TextPlaceholder(text: $password,
                            placeholder: Text("Password"),
                            imageSource: "lock")
            
            Button {
                viewModel.signIn()
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 70)
                    .background(Color.gray.opacity(0.8))
                    .clipShape(Capsule())
                    .padding()
            }

        }
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(email: "", password: "")
            .environmentObject(UserViewModel())
    }
}
