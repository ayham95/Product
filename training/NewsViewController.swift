//
//  NewsViewController.swift
//  training
//
//  Created by Ayham.dev on 5/25/17.
//  Copyright © 2017 DEV. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var newsTable: UITableView!
    let newsDataSource: NewsCellDataSource

    
    required init?(coder aDecoder: NSCoder) {
        let news = [News(title: "How to make food", descreption: "Mix strong bread flour, salt and fast-action yeast together in a large bowl",image: "food1.png"),
                    News(title: "How to make food", descreption: "Mix strong bread flour, salt and fast-action yeast together in a large bowl, salt and fast-action yeast, salt and fast-action yeast",image: "food1.png")
                    ]
        
        self.newsDataSource = NewsCellDataSource(news: news)
        
        super.init(coder: aDecoder)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        newsTable.estimatedRowHeight = 300
        newsTable.dataSource = newsDataSource
        newsTable.reloadData()
    }
}
