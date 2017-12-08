//
//  VideoTableViewCell.swift
//  YouTubeHomework
//
//  Created by Chhaileng Peng on 12/5/17.
//  Copyright © 2017 Chhaileng. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var channelLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.masksToBounds = false
        profileImage.layer.cornerRadius = profileImage.frame.size.height/2
        profileImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configCell(video: Video) {
        thumbnailImage.image = UIImage(named: video.thumbnail!)
        profileImage.image = UIImage(named: video.profile!)
        videoTitleLabel.text = video.title
        channelLabel.text = video.channel
        viewLabel.text = video.view
        timeLabel.text = video.time
    }
    
}
