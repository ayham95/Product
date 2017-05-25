//
//  NewsCell.swift
//  training
//
//  Created by Ayham.dev on 5/25/17.
//  Copyright © 2017 DEV. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var reportImage: UIImageView!
    
    
    var title: String? {
        didSet{
            titleLabel.text = title
        }
    }
    
    var imageName: String? {
        didSet{
            reportImage.image = UIImage(named: imageName!)
        }
    }
    
    var descreption: String? {
        didSet{
            descLabel.text = descreption
        }
    }


}
