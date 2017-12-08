//
//  VideoTitleCell.swift
//  YouTubeHomework
//
//  Created by Chhaileng Peng on 12/8/17.
//  Copyright © 2017 Chhaileng. All rights reserved.
//

import UIKit

class VideoTitleCell: UITableViewCell {

    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configCell(title: String, view: String) {
        self.videoTitleLabel.text = title
        self.viewLabel.text = view
    }
    
}
