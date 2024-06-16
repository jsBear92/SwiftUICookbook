//
//  Ch7Category.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

enum Ch7Category: Int, Identifiable, CaseIterable, Hashable {
    case meat
    case vegetable
    case fruit
    var id: Int { rawValue }
    
    var name: String {
        switch self {
        case .meat: "Meat"
        case .vegetable: "Vegetable"
        case .fruit: "Fruit"
        }
    }
}
