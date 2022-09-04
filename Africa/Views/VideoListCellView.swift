//
//  VideoListView.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import SwiftUI

struct VideoListCellView: View {
    // MARK: - PROPERTIES
    let video:Video
    // MARK: - BODY
    var body: some View {
        HStack(spacing:10) {
            ZStack {
                Image(video.thumnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height:80)
                .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height:32)
                    .shadow(radius: 4)
            }//: ZSTACK
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //: VSTACK
        }//: HSTACK
    }
}
// MARK: - PREVIEW
struct VideoListCellView_Previews: PreviewProvider {
    static var previews: some View {
        let videos:[Video] = Bundle.main.decode("videos.json")
        VideoListCellView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
