//
//  CoverImageView.swift
//  Africa
//
//  Created by Developer on 01/09/2022.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - Property
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }//: LOOP
        }
        .tabViewStyle(PageTabViewStyle())
       
    }
}
//MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width:400, height: 300))
    }
}
