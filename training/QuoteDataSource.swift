//
//  QuoteDataSource.swift
//  training
//
//  Created by Ayham.dev on 5/21/17.
//  Copyright © 2017 DEV. All rights reserved.
//

import UIKit

class QuotesDataSource: NSObject {
    let quotes: [Quote]
    
    init(quotes: [Quote]) {
        self.quotes = quotes
    }
}

extension QuotesDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quotecell", for: indexPath) as! QuoteCell
        let quote = quotes[indexPath.section]
        cell.category = quote.category
        cell.layer.cornerRadius = 3 //set corner radius here
        

//        cell.layer.borderWidth = 0 // set border width here
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return quotes.count
    }
    
    
}
