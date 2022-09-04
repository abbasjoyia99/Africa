//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal:Animal
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery,id:\.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                    .cornerRadius(12)
                }
            } //: HSTACK
        } // SCROLLVIEW
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let animals:[Animal] = Bundle.main.decode("animals.json")
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
