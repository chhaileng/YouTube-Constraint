//
//  TableViewController.swift
//  YouTubeHomework
//
//  Created by Chhaileng Peng on 12/5/17.
//  Copyright © 2017 Chhaileng. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    let videos = [
                   Video(thumb: "thumb-1", p: "sergey-kargopolov", title: "User login and register/sign up example using Swift on iOS. Video #1", c: "Sergey Kargopolov", v: "16.2K views", t: "2 years ago"),
                   Video(thumb: "thumb-2", p: "angga-risky", title: "Login & Register UI Design to iOS XCode Tutorial", c: "Angga Risky", v: "4.9K Views", t: "8 months ago"),
                   Video(thumb: "thumb-3", p: "sergey-kargopolov", title: "User login and register/sign up example using Swift on iOS. Video #1", c: "Sergey Kargopolov", v: "16.2K views", t: "2 years ago"),
                   Video(thumb: "thumb-4", p: "lets-build-that-app", title: "Swift: Firebase 3 - How to Build a Login Page Using iOS9 Constraint Anchors (Ep 1)", c: "Lets Build That App", v: "111.6K Views", t: "1 year ago"),
                   Video(thumb: "thumb-5", p: "devslopes", title: "Create a simple login screen in swift: authenticate the user and keep the session active", c: "Devslopes", v: "22.2K Views", t: "11 months ago"),
                   Video(thumb: "thumb-6", p: "brian-advent", title: "iOS Swift Tutorial: From Sketch Design to Real App", c: "Brian Advent", v: "138.1K views", t: "1 year ago"),
                   Video(thumb: "thumb-7", p: "lets-build-that-app", title: "iOS Swift: How to integrate the Facebook Login SDK and getting user's email address", c: "Lets Build That App", v: "87.4K Views", t: "1 year ago"),
                   Video(thumb: "thumb-8", p: "codewithchris", title: "Firebase Tutorial for iOS - Ep 8 - Authentication using an Email Login Page", c: "CodeWithChris", v: "16.9K Views", t: "10 months ago"),
                   Video(thumb: "thumb-9", p: "chhaileng", title: "iOS Login Sample", c: "Chhaileng Peng", v: "605 Views", t: "21 hours ago"),
                   Video(thumb: "thumb-10", p: "lets-build-that-app", title: "Swift 3: Firebase Social Login - Facebook Authentication and Cocoapods", c: "Lets Build That App", v: "42.5K Views", t: "1 year ago"),
                   Video(thumb: "thumb-11", p: "brian-advent", title: "UI Design Tutorial: Create a Login Form with Sketch - Meet the Conference Speaker", c: "Brian Advent", v: "17.6K Views", t: "1 year ago")
                ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "youtube-logo"), for: .normal)
        let youtubeIcon = UIBarButtonItem(customView: button)
        navigationItem.leftBarButtonItem = youtubeIcon
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("VideoTableViewCell", owner: self, options: nil)?.first as! VideoTableViewCell
        
        cell.configCell(video: videos[indexPath.row])
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let videoDetail = self.storyboard?.instantiateViewController(withIdentifier: "videoDetailStoryboard") as! VideoDetailViewController
        
        videoDetail.videoTitle = videos[indexPath.row].title
        videoDetail.thumbnail = videos[indexPath.row].thumbnail
        videoDetail.profile = videos[indexPath.row].profile
        videoDetail.channel = videos[indexPath.row].channel
        videoDetail.viewLabel = videos[indexPath.row].view
        
        self.navigationController?.pushViewController(videoDetail, animated: true)
    }

}
