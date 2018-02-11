//
//  PhotoCell.swift
//  Week1Lab-TumblrFeed
//
//  Created by Henry Vuong on 2/11/18.
//  Copyright © 2018 Henry Vuong. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var cellView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
