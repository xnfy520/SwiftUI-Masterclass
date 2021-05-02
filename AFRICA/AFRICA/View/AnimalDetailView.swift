//
//  AnimalDetailView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct AnimalDetailView: View {
    
    var animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 16)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(x: 0, y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness In Picture")
                    .padding(.top)
                
                InsetGalleryView(animal: animal)
                
                
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All About \(animal.name)")
                    Text(animal.description)
                        .layoutPriority(1)
                }
                .padding(.top, 8)
                .padding(.horizontal)
                
                
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.top, 8)
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "book", headingText: "Learn More")
                    ExternalWebLinkView(animal: animal)
                    
                }  .padding(.top, 8)
                .padding(.horizontal)
                
            } //: VStack
            .navigationBarTitle("Learn About " + animal.name.uppercased())
            .navigationBarTitleDisplayMode(.inline)
            
        } //: ScrollView
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalDetailView(animal: animal[1])
    }
}
