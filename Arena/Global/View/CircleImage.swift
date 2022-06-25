//
//  CircleImage.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import SwiftUI

struct CircleImage: View {
    
    var imageSource: String
    
    var body: some View {
        
        Image(imageSource)
            .resizable()
            .scaledToFill()
            .clipped()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .shadow(color: .black, radius: 10, x:0, y:0)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageSource: "Chito")
    }
}
