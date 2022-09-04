//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    var animal:Animal
    var body: some View {
            ScrollView(.vertical,showsIndicators: false) {
                
                VStack (alignment: .center,spacing: 20) {
                    // MARK: - COVER IMAGE
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                    // MARK: - TITLE
                    Text(animal.name.uppercased())
                        .foregroundColor(.primary)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical,8)
                        .background(
                            Color.accentColor
                                .frame(height:6)
                                .offset(y:26)
                        )
                    // MARK: - HEADLINE
                    Text(animal.headline)
                        .foregroundColor(.accentColor)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    // MARK: - GALLERY
                    Group {
                        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Willderness in pictures")
                        
                        InsetGalleryView(animal: animal)
                    }
                    .padding(.horizontal)
                    
                    // MARK: - FACTS
                    Group {
                      HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                        FactView(animal: animal)
                    }
                    .padding(.horizontal)
                    // MARK: - DESCRIPTION
                    Group {
                        HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                    }
                    // MARK: - MAP
                    Group {
                        HeadingView(headingImage: "map", headingText: "National Park")
                        InsetMapView()
                    }
                    .padding(.horizontal)
                    // MARK: - LINK
                    Group {
                      HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                        ExternalWebLinkView(animal: animal)
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("Learn about \(animal.name)")
                .navigationBarTitleDisplayMode(.inline)
            }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let animals:[Animal] = Bundle.main.decode("animals.json")
        AnimalDetailView(animal: animals[0])
    }
}
