//
//  ContentView.swift
//  Africa
//
//  Created by Developer on 01/09/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let animals:[Animal] = Bundle.main.decode("animals.json")
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height:300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach (animals) { item in
                NavigationLink(destination:AnimalDetailView(animal: item)) {
                    AnimalListItemView(animal: item)
                    }
                }
            } //: LIST
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
