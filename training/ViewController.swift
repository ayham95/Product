//
//  ViewController.swift
//  training
//
//  Created by Ayham.dev on 5/21/17.
//  Copyright © 2017 DEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let quotesDataSource: QuotesDataSource
    
    required init?(coder aDecoder: NSCoder) {
        let quotes = [
            Quote(category: "TECHNOLOGY"),
            Quote(category: "FASHION"),
            Quote(category: "FOODSTUFF"),
            Quote(category: "FURNITURE"),
            Quote(category: "BEAUTY"),
            Quote(category: "BOOKS"),
            Quote(category: "HEALTH & PERSONAL CARE"),
            Quote(category: "JEWELRY"),
            Quote(category: "OTHER"),
        ]
        
        
        self.quotesDataSource = QuotesDataSource(quotes: quotes)
        super.init(coder: aDecoder)
    }
}

// MARK: UIViewController
extension ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        tableView.dataSource = quotesDataSource
        tableView.reloadData()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
    
    }
    
    
}
