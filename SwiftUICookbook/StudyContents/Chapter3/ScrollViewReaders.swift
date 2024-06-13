//
//  ScrollViewReaders.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 13/6/2024.
//

import SwiftUI

struct CharacterInfo: Identifiable {
    var name: String
    var id: Int
}

extension CharacterInfo {
    static let charArray = [
        CharacterInfo(name: "a.circle.fill", id: 0),
        CharacterInfo(name: "b.circle.fill", id: 1),
        CharacterInfo(name: "c.circle.fill", id: 2),
        CharacterInfo(name: "d.circle.fill", id: 3),
        CharacterInfo(name: "e.circle.fill", id: 4),
        CharacterInfo(name: "f.circle.fill", id: 5),
        CharacterInfo(name: "g.circle.fill", id: 6),
        CharacterInfo(name: "h.circle.fill", id: 7),
        CharacterInfo(name: "i.circle.fill", id: 8),
        CharacterInfo(name: "j.circle.fill", id: 9),
        CharacterInfo(name: "k.circle.fill", id: 10),
        CharacterInfo(name: "l.circle.fill", id: 11),
        CharacterInfo(name: "m.circle.fill", id: 12),
        CharacterInfo(name: "n.circle.fill", id: 13),
        CharacterInfo(name: "o.circle.fill", id: 14),
        CharacterInfo(name: "p.circle.fill", id: 15),
        CharacterInfo(name: "q.circle.fill", id: 16),
    ]
}

struct ScrollViewReaders: View {
    @State private var scrolledID: CharacterInfo.ID?
    var body: some View {
        HStack(spacing: 20, content: {
            VStack {
                Text("iOS 17+")
                    .foregroundStyle(.blue)
                    .font(.title)
                ScrollView {
                    // scrolling content will go here
                    LazyVStack {
                        Button(action: {
                            scrolledID = 16
                        }, label: {
                            Text("Go to letter Q")
                        })
                        .padding()
                        .background(.blue)
                        .tint(.yellow)
                        ForEach(CharacterInfo.charArray) { image in
                            Image(systemName: image.name)
                                .font(.largeTitle)
                                .foregroundStyle(.blue)
                                .frame(width: 90, height: 90)
                                .background(.yellow)
                                .padding()
                        }
                        Button(action: {
                            withAnimation{
                                scrolledID = 6
                            }
                        }, label: {
                            Text("Go to letter G")
                        })
                        .padding()
                        .background(.blue)
                        .tint(.yellow)
                    }
                }
                .scrollPosition(id: $scrolledID)
            }
            VStack {
                Text("iOS 14+")
                    .foregroundStyle(.blue)
                    .font(.title)
                ScrollView {
                    // legacy code will go here
                    ScrollViewReader { proxy in
                        Button(action: {
                            proxy.scrollTo(16)
                        }, label: {
                            Text("Go to letter Q")
                        })
                        .padding()
                        .background(.yellow)
                        ForEach(CharacterInfo.charArray) { image in
                            Image(systemName: image.name)
                                .font(.largeTitle)
                                .foregroundStyle(.blue)
                                .frame(width: 90, height: 90)
                                .background(.yellow)
                                .padding()
                        }
                        Button(action: {
                            withAnimation { proxy.scrollTo(6, anchor: .top)}
                        }, label: {
                            Text("Go to letter G")
                        })
                        .padding()
                        .background(.yellow)
                    }
                }
            }
            .padding(.horizontal)
        })
        .padding(.horizontal)
    }
}

#Preview {
    ScrollViewReaders()
}
