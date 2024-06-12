//
//  UsingImages.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 12/6/2024.
//

import SwiftUI

struct UsingImages: View {
    var body: some View {
        VStack {
            Image("dog1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("dog-and-nature")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(.blue, lineWidth: 6))
                .shadow(radius: 10)
            Image("dog2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        }
        
    }
}

#Preview {
    UsingImages()
}
