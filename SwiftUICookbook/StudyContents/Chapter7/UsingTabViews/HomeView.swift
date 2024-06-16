//
//  HomeView.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 16/6/2024.
//

import SwiftUI

struct HomeView: View {
    let games = ["Doom", "Final F","Cyberpunk", "avengers", "animal trivia", "sudoku", "snakes and ladders", "Power rangers", "ultimate frisbee", "football", "soccer", "much more"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(games, id: \.self) { game in
                    Text(game).padding()
                }
            }
            .navigationTitle("Best Games for 2021")
        }
    }
}

#Preview {
    HomeView()
}
