//
//  TweetTableViewCell.swift
//  TweetsCounter
//
//  Created by Patrick Balestra on 2/21/16.
//  Copyright © 2016 Patrick Balestra. All rights reserved.
//

import UIKit
import ActiveLabel

class TweetTableViewCell: UITableViewCell {

    @IBOutlet weak var tweetLabel: ActiveLabel!
    @IBOutlet weak var dateLabel: UILabel!
    weak var delegate: UserDetailViewControllerDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.clearColor()
        tweetLabel.textColor = UIColor.whiteColor()
        dateLabel.textColor = UIColor.whiteColor()
        
        setUpTwitterElementHandlers()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setUpTwitterElementHandlers() {
        tweetLabel.handleURLTap { url in
            self.delegate.presentSafari(url)
        }
        
        tweetLabel.handleHashtagTap { hashtag in
            
        }
        
        tweetLabel.handleMentionTap { mention in
            
        }
    }

}