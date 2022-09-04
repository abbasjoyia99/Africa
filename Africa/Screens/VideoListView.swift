//
//  VideoListView.swift
//  Africa
//
//  Created by Developer on 01/09/2022.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
   @State var videos:[Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List(videos) { item in
                NavigationLink(destination:VideoPlayerView(selectedVideo: item.id, videoTitle: item.name)) {
                    VideoListCellView(video: item)
                        .padding(.vertical,8)
                }
                
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                      Image(systemName: "arrow.2.squarepath")
                    })
                }            }
        } // : NAVIGATION
        
    }
}
// MARK: - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
