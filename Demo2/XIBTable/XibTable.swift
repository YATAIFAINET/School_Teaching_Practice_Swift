//
//  XibTable.swift
//  Demo2
//
//  Created by Alex on 2023/4/14.
//

import Foundation
import UIKit

class XibTable: BaseController {
    @IBOutlet var tablelist: UITableView!
    var Send :String = "NULL" {
        didSet{
            printLog(LogString: Send)
        }
    }
    var model:[Product] = [];
}

extension XibTable {
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        initModel()
    }
}

extension XibTable {
    func initModel () {
        self.model.append(Product.init(title: "Alex", itemtitle: "產品1", date: "日期1", price: "100"))
        self.model.append(Product.init(title: "Alex2", itemtitle: "產品2", date: "日期2", price: "200"))
        self.model.append(Product.init(title: "Alex3", itemtitle: "產品3", date: "日期3", price: "300"))
        self.model.append(Product.init(title: "Alex4", itemtitle: "產品4", date: "日期4", price: "400"))
        self.model.append(Product.init(title: "Alex5", itemtitle: "產品5", date: "日期5", price: "500"))
    }
}

extension XibTable {
    func initView () ->Void {
        setupTableView()
    }

    func setupTableView() {
        self.tablelist.register(UINib(nibName: "\(xibcell.self)", bundle: nil), forCellReuseIdentifier: "\(xibcell.self)")
    }
}

extension XibTable : UITableViewDataSource,UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "\(xibcell.self)", for: indexPath) as! xibcell

        cell.titleString = self.model[indexPath.row].title ?? ""
        cell.itemTitleString = self.model[indexPath.row].itemtitle ?? ""
        cell.itemDateString = self.model[indexPath.row].date ?? ""
        cell.itemPriceString = self.model[indexPath.row].price ?? ""

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
