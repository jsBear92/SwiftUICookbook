//
//  Ch7Navigation.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 15/6/2024.
//

import Foundation

final class Ch7Navigation: ObservableObject {
    @Published var path = [Ch7Food]()
    
    func popToRoot() {
        path = .init()
    }
}
