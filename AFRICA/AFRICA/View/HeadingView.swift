//
//  HeadingView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct HeadingView: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.medium)
        }
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "rectangle.righthalf.inset.fill.arrow.right", headingText: "dsds")
            .previewLayout(.sizeThatFits)
    }
}
