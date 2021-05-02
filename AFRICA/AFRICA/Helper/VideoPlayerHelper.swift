//
//  VideoPlayerHelper.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    if let path = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: path)
        videoPlayer?.play()
    }
    return videoPlayer!
}
