//
//  FactView.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import SwiftUI

struct FactView: View {
    var animal:Animal
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact,id: \.self) { item in
                    Text(item)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,8)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame( minHeight: 148, idealHeight: 168, maxHeight: 180)
        } // GROUPBOX
        
    }
}

struct FactView_Previews: PreviewProvider {
    static var previews: some View {
        let animals:[Animal] = Bundle.main.decode("animals.json")
        FactView(animal:animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
