//
//  VideoListView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .light)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItem(video: item)
                            .padding(.vertical, 8)
                    }
                }//: ForEach
            }//: List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        videos.shuffle()
                                        hapticImpact.impactOccurred()
                                    }, label: {
                                        Image(systemName: "repeat")
                                    })
            )
        }//: NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider {
    
    static var previews: some View {
        VideoListView()
    }
}
