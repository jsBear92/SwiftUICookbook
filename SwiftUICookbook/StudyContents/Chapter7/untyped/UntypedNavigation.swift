//
//  UntypedNavigation.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

final class UntypedNavigation: ObservableObject {
    @Published var path: NavigationPath = .init()
    
    func popToRoot() {
        path = .init()
    }
}
