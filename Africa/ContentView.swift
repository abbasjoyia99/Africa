//
//  ContentView.swift
//  Africa
//
//  Created by Developer on 01/09/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isGridViewActive: Bool = false
    let animals:[Animal] = Bundle.main.decode("animals.json")
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    @State private var  girdLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    
    @State private var toolbarIcon: String = "square.grid.2x2"
    // MARK: - FUNCTIONS
    func gridSwitch() {
        girdLayout = Array(repeating: .init(.flexible()), count: girdLayout.count%3 + 1)
        gridColumn = girdLayout.count
        
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default :
            toolbarIcon = "square.grid.2x2"
        }
    }
    // MARK: - BODY
    var body: some View {
        NavigationView {
            Group {
                if isGridViewActive {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: girdLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { item in
                                NavigationLink(destination: AnimalDetailView(animal: item)) {
                                    AnimalGridItemView(animal: item)
                                }
                                
                            }// LOOP
                        }//: GRID
                        .padding(10)
                        .animation(.easeIn)
                    }
                } else {
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
                }

            } // : GROUP
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        //:List
                        Button(action: {
                          isGridViewActive = false
                            haptic.impactOccurred()
                        }) {
                          Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title)
                                .foregroundColor(isGridViewActive ? .primary: .accentColor)
                        }
                        
                        //: GRID
                        Button(action: {
                            haptic.impactOccurred()
                            gridSwitch()
                            isGridViewActive = true
                        }) {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor: .primary)
                        }
                    }
                }
            })
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
