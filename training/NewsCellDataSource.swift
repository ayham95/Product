//
//  NewsCellDataSource.swift
//  training
//
//  Created by Ayham.dev on 5/25/17.
//  Copyright © 2017 DEV. All rights reserved.
//

import UIKit

class NewsCellDataSource: NSObject {
    let news: [News]
    
    init(news: [News]) {
        self.news = news
    }
}

extension NewsCellDataSource: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newscell", for: indexPath) as! NewsCell
        let news = self.news[indexPath.section]
        cell.title = news.title
        cell.descreption = news.descreption
        cell.imageName = news.image
        cell.layer.cornerRadius = 3
        
        return cell
    }
}
