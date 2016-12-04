//
//  UserDetailsTableViewCell.swift
//  TweetsCounter
//
//  Created by Patrick Balestra on 5/1/16.
//  Copyright © 2016 Patrick Balestra. All rights reserved.
//

import UIKit

class UserDetailsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: ProfilePictureImageView!
    @IBOutlet weak var descriptionLabel: UILabel!

    var userDescription: String = ""
    var userWebsite: String = ""

    var descriptionAttributedString: Int = 0 {
        didSet {
            let numberAttributes = [NSForegroundColorAttributeName : UIColor.white,
                                    NSFontAttributeName : UIFont.systemFont(ofSize: 15, weight: UIFontWeightLight)]
            let attributedString = NSMutableAttributedString(string: String(userDescription), attributes: numberAttributes)
            let followersAttributes = [NSForegroundColorAttributeName : UIColor.white,
                                       NSFontAttributeName : UIFont.systemFont(ofSize: 11, weight: UIFontWeightThin)]
            let followersWord = NSAttributedString(string: " Followers", attributes: followersAttributes)
            attributedString.append(followersWord)
            descriptionLabel.attributedText = attributedString
        }
    }
    
    func configure(_ user: User) {
        backgroundColor = UIColor.backgroundBlueColor()
        userDescription = user.description
    }
    
}