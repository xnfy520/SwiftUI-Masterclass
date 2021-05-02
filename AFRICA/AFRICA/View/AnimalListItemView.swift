//
//  AnimalListItemView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct AnimalListItemView: View {
    
    var animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            NavigationLink(
                destination: AnimalDetailView(animal: animal)) {
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)
                    
                    Text(animal.headline)
                        .font(.footnote)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                } //: VStack
            } // : NavigationLink
        }//: HStack
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animal[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
