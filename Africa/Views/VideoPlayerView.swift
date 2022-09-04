//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var selectedVideo: String
    var videoTitle: String
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: selectedVideo, fileFormat: "mp4")) {
                Text(videoTitle)
            }
        } //: VSTACK
        .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top,6)
                .padding(.horizontal,8)
            , alignment: .topLeading
        )
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            VideoPlayerView(selectedVideo: "lion", videoTitle: "Lion")
        }
    }
}
