//
//  CoverImageView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } // : Loop
        } // : TabView
        .tabViewStyle(PageTabViewStyle())
    }
}
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
