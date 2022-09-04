//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Developer on 02/09/2022.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName:String,fileFormat:String)-> AVPlayer {
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
        
    }
    return videoPlayer!
}

