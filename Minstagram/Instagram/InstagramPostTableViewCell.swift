//
//  InstagramPostTableViewCell.swift
//  Instagram
//
//  Created by Mariella Sypa on 3/20/16.
//  Copyright © 2016 Mariella Sypa. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class InstagramPostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoView: PFImageView!
    @IBOutlet var captionLabel: UILabel!
    
    var instagramPost: PFObject! {
        didSet {
            self.photoView.file = instagramPost["media"] as? PFFile
            self.captionLabel.text = instagramPost["caption"] as? String
            self.photoView.loadInBackground()
        }
    }
}