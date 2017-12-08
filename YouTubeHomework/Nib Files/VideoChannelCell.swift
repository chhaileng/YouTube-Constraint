//
//  VideoChannelCell.swift
//  YouTubeHomework
//
//  Created by Chhaileng Peng on 12/8/17.
//  Copyright © 2017 Chhaileng. All rights reserved.
//

import UIKit

class VideoChannelCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var channelLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.masksToBounds = false
        profileImage.layer.cornerRadius = profileImage.frame.size.height/2
        profileImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configCell(profile: String, channel: String) {
        profileImage.image = UIImage(named: profile)
        channelLabel.text = channel
    }
    
}
