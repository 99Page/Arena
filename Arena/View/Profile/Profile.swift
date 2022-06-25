//
//  Profile.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import SwiftUI

struct Profile: View {
    
    @EnvironmentObject var viewModel: UserViewModel
    var user: UserModel
    
    var body: some View {
        VStack(spacing: 20) {
            
            CircleImage(imageSource: user.imageSource)
                .padding(.top, 20)
            
            Text(user.name)
                .font(.system(size: 20))
            
            Spacer()
            
            Button {
                viewModel.signOut()
            } label: {
                Text("로그아웃")
            }
            .foregroundColor(.red)

        }
    }
}

struct Profile_Previews: PreviewProvider {
    
    @StateObject var viewModel = UserViewModel()
    
    static var previews: some View {
        Profile(user: UserModel.default)
            .environmentObject(UserViewModel())
    }
}
