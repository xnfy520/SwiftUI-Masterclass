//
//  SettingLabelView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct SettingLabelView: View {
    
    var text: String
    var image: String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Image(systemName: image)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(text: "Test", image: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
