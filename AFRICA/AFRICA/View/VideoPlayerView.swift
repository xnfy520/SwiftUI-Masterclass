//
//  VideoPlayerView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
       // NavigationView {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 42, height: 42)
                        .padding()
                    ,alignment: .topLeading
                )
                .navigationBarTitle(videoTitle)
                .navigationBarTitleDisplayMode(.inline)
        //}// NavigationView
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion",videoTitle: "lion")
    }
}
