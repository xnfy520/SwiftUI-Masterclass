//
//  ExternalWebLinkView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    var animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "circles.hexagongrid")
                Text("Wikipedia")
                    .font(.footnote)
                
                Spacer()
                
                Link(destination: URL(string: animal.link)!, label: {
                    HStack {
                        Image(systemName: "arrow.up.right.square")
                        Text(animal.name)
                    }
                })
            }
        }
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWebLinkView(animal: animal.first!)
            .previewLayout(.fixed(width: 400, height: 100))
            .padding()
    }
}
