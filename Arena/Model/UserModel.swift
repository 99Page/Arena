//
//  ProfileModel.swift
//  Arena
//
//  Created by 노우영 on 2022/06/25.
//

import Foundation

struct UserModel: Identifiable, Codable {
    var id = UUID()
    var name: String
    var imageSource: String
    
    static let `default` = UserModel(name: "Chito", imageSource: "Chito")

}
