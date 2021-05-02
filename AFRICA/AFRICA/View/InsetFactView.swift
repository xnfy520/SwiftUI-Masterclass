//
//  InsetFactView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }.tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        InsetFactView(animal: animal.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
