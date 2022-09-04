//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Developer on 01/09/2022.
//

import SwiftUI

struct AnimalListItemView: View {
    var animal:Animal
    var body: some View {
            HStack (alignment: .center, spacing: 16) {
                Image (animal.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                VStack(alignment:.leading,spacing: 8) {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    
                    Text(animal.headline)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.trailing,8)
                } // :VSTACK
            }// :HSTACK
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        
        let animals:[Animal] = Bundle.main.decode("animals.json")
        
        AnimalListItemView(animal:animals[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
