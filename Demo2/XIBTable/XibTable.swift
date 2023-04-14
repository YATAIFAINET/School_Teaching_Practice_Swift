//
//  XibTable.swift
//  Demo2
//
//  Created by Alex on 2023/4/14.
//

import Foundation

class XibTable: BaseController {
    var Send :String = "NULL" {
        didSet{
            printLog(LogString: Send)
        }
    }
}

extension XibTable {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension XibTable {

}
