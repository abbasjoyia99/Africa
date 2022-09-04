//
//  MainView.swift
//  Africa
//
//  Created by Developer on 01/09/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem( {
                Image(systemName: "square.grid.2x2")
                Text("Browse")
            })//:ContentView
            
            VideoListView()
                .tabItem({
                    Image(systemName: "play.rectangle")
                    Text("watch")
                })//: VideoListView
            
            MapView()
                .tabItem({
                    Image(systemName: "map")
                    Text("locations")
                })//: MapView
            
            GalleryView()
                .tabItem({
                    Image(systemName: "photo")
                    Text("Gallery")
                })
            
            
        } //: TabView
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
