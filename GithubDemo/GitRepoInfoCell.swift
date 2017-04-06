//
//  GitRepoInfoCell.swift
//  GithubDemo
//
//  Created by Nana on 4/5/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GitRepoInfoCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var forks: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var avatar: UIImageView!

    var gitRepoInfo: GithubRepo! {
        didSet {
            name.text = gitRepoInfo.name
            desc.text = gitRepoInfo.repoDescription
            stars.text = String(format: "%ld", gitRepoInfo.stars ?? 0)
            forks.text = String(format: "%ld", gitRepoInfo.forks ?? 0)
            author.text = gitRepoInfo.ownerHandle

            avatar.setImageWith(gitRepoInfo.avatarImageURL)
        }
    }
}
