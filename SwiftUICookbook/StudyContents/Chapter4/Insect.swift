//
//  Insect.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 14/6/2024.
//

struct Insect: Decodable, Identifiable {
    var id: Int
    var imageName: String
    var name: String
    var habitat: String
    var description: String
}
