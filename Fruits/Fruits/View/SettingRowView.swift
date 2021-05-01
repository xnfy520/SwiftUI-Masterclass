//
//  SettingRowView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct SettingRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                
                if let content = content {
                    Text(content)
                } else if let link = linkLabel, let linkDest = linkDestination {
                    Link(link, destination: URL(string: linkDest)!)
                        .foregroundColor(.black)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        SettingRowView(name: "Test", content: nil , linkLabel: "Dsd", linkDestination: "dsd")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingRowView(name: "Test", content: "dsds" , linkLabel: nil, linkDestination: nil)
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}
