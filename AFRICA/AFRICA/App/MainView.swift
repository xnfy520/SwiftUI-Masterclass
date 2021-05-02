//
//  MainView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Text("Browse")
                    Image(systemName: "square.grid.2x2")
                }
            VideoListView()
                .tabItem {
                    Text("Watch")
                    Image(systemName: "play.rectangle")
                }
            MapView()
                .tabItem {
                    Text("Locations")
                    Image(systemName: "map")
                }
            GalleryView()
                .tabItem {
                    Text("Gallery")
                    Image(systemName: "photo")
                }
               
        }//: TabView
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
