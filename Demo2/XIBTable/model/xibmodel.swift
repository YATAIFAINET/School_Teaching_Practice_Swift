//
//  xibmodel.swift
//  Demo2
//
//  Created by Alex on 2023/5/5.
//

import Foundation

struct Product {
    var title:String?
    var itemtitle:String?
    var date:String?
    var price:String?

    init (title:String , itemtitle:String , date:String,price:String) {
        self.title = title
        self.itemtitle = itemtitle
        self.date = date
        self.price = price
    }

}
