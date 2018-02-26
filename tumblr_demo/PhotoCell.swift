//
//  PhotoCell.swift
//  tumblr_demo
//
//  Created by Sijin Wang on 2/26/18.
//  Copyright © 2018 Sijin Wang. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {
    
    @IBOutlet weak var photoView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
