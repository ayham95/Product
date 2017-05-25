//
//  QuoteCell.swift
//  training
//
//  Created by Ayham.dev on 5/21/17.
//  Copyright © 2017 DEV. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {
    @IBOutlet weak var categoryLabel: UILabel!
    
    var category: String? {
        didSet {
            categoryLabel.text = category
        
        }
    }
    
}
