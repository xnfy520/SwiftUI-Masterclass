//
//  VideoListItem.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import SwiftUI

struct VideoListItem: View {
    
    let video: Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image("video-\(video.id)")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(4)
                    .frame(width: 100)
                    
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .shadow(radius: 4)
            }
            
            VStack(alignment: .leading,spacing: 10) {
                
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                //Spacer()
                
                Text(video.headline)
                    .font(.footnote)
                    .lineLimit(2)
                  // .fontWeight(.bold)
            }
        }
    }
}

struct VideoListItem_Previews: PreviewProvider {
    
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItem(video: videos.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
