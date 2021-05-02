//
//  InsetGalleryView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct InsetGalleryView: View {
    
    var animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0 ..< animal.gallery.count) { index in
                    Image(animal.gallery[index])
                     .resizable()
                     .scaledToFit()
                     .cornerRadius(24)
                    .frame(width: 260, height: 160)
                      
                }.padding(.horizontal)
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsetGalleryView(animal: animal.first!)
            .previewLayout(.sizeThatFits)
    }
}


