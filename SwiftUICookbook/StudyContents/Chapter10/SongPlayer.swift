//
//  SongPlayer.swift
//  SwiftUICookbook
//
//  Created by Jaeseong Jeong on 18/6/2024.
//

import SwiftUI

struct Song: Identifiable, Equatable {
    var id = UUID()
    let artist: String
    let name: String
    let cover: String
}

class MusicPlayer: ObservableObject {
    @Published var currentSong: Song?
    func tapButton(song: Song) {
        if currentSong == song {
            currentSong = nil
        } else {
            currentSong = song
        }
    }
}

struct PlayButton: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer
    let song: Song
    private var buttonText: String {
        if song == musicPlayer.currentSong {
            return "stop"
        } else {
            return "play"
        }
    }
    var body: some View {
        Button {
            withAnimation {
                musicPlayer.tapButton(song: song)
            }
        } label: {
            Image(systemName: buttonText)
                .font(.system(.largeTitle))
                .foregroundStyle(.black)
        }

    }
}

struct MiniPlayerView: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer
    var body: some View {
        if let currentSong = musicPlayer.currentSong {
            SongView(song: currentSong)
                .padding(24)
        } else {
            EmptyView()
        }
    }
}

struct SongView: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer
    let song: Song
    var body: some View {
        HStack {
            NavigationLink(destination: PlayerView(song: song)) {
                Image(song.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text(song.name)
                    Text(song.artist).italic()
                }
            }
            Spacer()
            PlayButton(song: song)
        }
        .buttonStyle(.plain)
    }
}

struct PlayerView: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer
    let song: Song
    
    var body: some View {
        VStack {
            Image(song.cover)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
            HStack {
                Text(song.name)
                Text(song.artist).italic()
            }
            PlayButton(song: song)
        }
    }
}

struct SongPlayer: View {
    @EnvironmentObject private var musicPlayer: MusicPlayer

    private let songs = [
        Song(artist: "Luke", name: "99", cover: "cover0"),
        Song(artist: "Foxing", name: "No Trespassing", cover: "cover1"),
        Song(artist: "Breaking Benjamin", name: "Phobia", cover: "cover2"),
        Song(artist: "J2", name: "Solenoid", cover: "cover3"),
        Song(
            artist: "Wildflower Clothing", name: "Lightning Bottles",
            cover: "cover4"),
        Song(artist: "The Broken Spirits", name: "Rubble", cover: "cover5"),
    ]
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationStack {
                List(self.songs) { song in
                    SongView(song: song)
                }
                .listStyle(.plain)
                .navigationTitle("Music Player")
            }
            MiniPlayerView()
                .background(.gray)
                .offset(y: 44)
                .zIndex(1.0)
        }
    }
}

#Preview {
    SongPlayer()
        .environmentObject(MusicPlayer())
}
