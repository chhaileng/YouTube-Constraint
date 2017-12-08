//
//  VideoPlayerViewController.swift
//  YouTubeHomework
//
//  Created by Chhaileng Peng on 12/8/17.
//  Copyright © 2017 Chhaileng. All rights reserved.
//

import UIKit

class VideoDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    var videoTitle: String?
    var thumbnail: String?
    var profile: String?
    var channel: String?
    var viewLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thumbnailImage.image = UIImage(named: thumbnail!)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = Bundle.main.loadNibNamed("VideoTitleCell", owner: self, options: nil)?.first as! VideoTitleCell
            cell.preservesSuperviewLayoutMargins = false
            cell.separatorInset = UIEdgeInsets.zero
            cell.layoutMargins = UIEdgeInsets.zero
            cell.configCell(title: videoTitle!, view: viewLabel!)
            return cell
        case 1:
            let cell = Bundle.main.loadNibNamed("VideoActionButtonCell", owner: self, options: nil)?.first as! VideoActionButtonCell
            cell.preservesSuperviewLayoutMargins = false
            cell.separatorInset = UIEdgeInsets.zero
            cell.layoutMargins = UIEdgeInsets.zero
            return cell
        default:
            let cell = Bundle.main.loadNibNamed("VideoChannelCell", owner: self, options: nil)?.first as! VideoChannelCell
            cell.preservesSuperviewLayoutMargins = false
            cell.separatorInset = UIEdgeInsets.zero
            cell.layoutMargins = UIEdgeInsets.zero
            cell.configCell(profile: profile!, channel: channel!)
            return cell
        }
    }
    
}
