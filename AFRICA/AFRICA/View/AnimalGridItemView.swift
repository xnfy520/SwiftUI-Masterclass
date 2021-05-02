//
//  AnimalGridItemView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    var animal: Animal
    
    var body: some View {
        NavigationLink(
        destination: AnimalDetailView(animal: animal)) {
            Image(animal.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
              //  .frame(width: 260, height: 160)
        }
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals.first!)
            .previewLayout(.sizeThatFits)
    }
}
