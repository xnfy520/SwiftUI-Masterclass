//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/Main_Page")!)
                Image(systemName: "link")
            }
        }.font(.footnote)
        .foregroundColor(.black)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
