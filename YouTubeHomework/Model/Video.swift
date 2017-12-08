//
//  Video.swift
//  YouTubeHomework
//
//  Created by Chhaileng Peng on 12/8/17.
//  Copyright © 2017 Chhaileng. All rights reserved.
//

import Foundation

class Video {
    var thumbnail: String?
    var profile: String?
    var title: String?
    var channel: String?
    var view: String?
    var time: String?
    
    init(thumb: String, p: String, title: String, c: String, v: String, t: String) {
        self.thumbnail = thumb
        self.profile = p
        self.title = title
        self.channel = c
        self.view = v
        self.time = t
    }
}
