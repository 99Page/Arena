//
//  TextPlaceholder.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import SwiftUI

struct TextPlaceholder: View {
    
    @Binding var text: String
    let placeholder: Text
    let imageSource: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.87)))
                    .padding(.leading, 40)
            }
            
            HStack(spacing: 16) {
                Image(systemName: imageSource)
                    .resizable()
                    .scaledToFit()
                    .frame(width:20, height:20)
                    .foregroundColor(.white)
                
                TextField("", text: $text)
            }
        }
        .padding()
        .background(.gray.opacity(0.8))
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

struct TextPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        TextPlaceholder(text: .constant(""), placeholder: Text("Email"),
                        imageSource: "envelope")
    }
}
