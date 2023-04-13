//
//  BaseControllerAction.swift
//  Demo2
//
//  Created by fainet on 2023/3/18.
//

import UIKit


/// 函式庫
extension BaseController {
    func printLog(LogString:String) -> Void {
        print("Alex:"+LogString)
    }
}

///Action
extension BaseController {
    @IBAction func Confirm (_sender:UIButton) {
        printLog(LogString: "Button_Click");
    }
}
