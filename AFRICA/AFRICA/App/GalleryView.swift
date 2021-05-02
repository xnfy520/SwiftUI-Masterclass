//
//  GalleryView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct GalleryView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    
    @State var gridLayout: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    @State var gridColumn: Double =  3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn))
    }
    
    @State var selectedImage: String =  "lion"
    
    @State var slider = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            Image(selectedImage)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 1)
                )
                .padding(.bottom, 10)
            
            Slider(value: $gridColumn, in: 2...4, step: 1)
                .padding()
                .onChange(of: gridColumn, perform: { value in
                    gridSwitch()
                })
            
            
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                ForEach(animals) {item in
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(Circle()
                                    .stroke(Color.white, lineWidth: 1)
                        )
                        .onTapGesture {
                            selectedImage = item.image
                        }
                }
            }
            .animation(.easeIn)
           
        }
      
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
