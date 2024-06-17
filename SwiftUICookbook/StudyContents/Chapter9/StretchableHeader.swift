//
//  StretchableHeader.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 17/6/2024.
//

import SwiftUI

struct StretchRow: View {
    var body: some View {
        HStack {
            Image("Apple")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Spacer()
            VStack(alignment: .trailing) {
                Text("Apple")
                    .fontWeight(.heavy)
                Text("Happier")
            }
        }
        .padding(.horizontal, 15)
    }
}

struct StretchableHeaderView: View {
    let imageResource: ImageResource
    var body: some View {
        GeometryReader { geometry in
            Image(imageResource)
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: geometry.size.height)
                .offset(y: geometry.verticalOffset)
        }
        .frame(height: 350)
    }
}

extension GeometryProxy {
    private var offset: CGFloat { frame(in: .global).minY}
    var height: CGFloat { size.height + (offset > 0 ? -offset : 0)}
    var verticalOffset: CGFloat { offset > 0 ? -offset : 0}
}

struct StretchableHeader: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                StretchableHeaderView(imageResource: .apple)
                ForEach(0..<6) { _ in
                    StretchRow()
                    Divider()
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    StretchableHeader()
}
