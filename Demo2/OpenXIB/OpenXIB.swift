//
//  OpenXIB.swift
//  Demo2
//
//  Created by Alex on 2023/4/14.
//

import Foundation
import UIKit

class OpenXIB:BaseController  {
    var xibTitle:String = ""{
        didSet{
            printLog(LogString: xibTitle);
        }
    }
}


//MARK:生命週期
extension OpenXIB {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printLog(LogString: "viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
}

extension OpenXIB {
    @IBAction func Send (_ sender :UIButton) -> Void {
        
        let vc:XibTable = .init()
        vc.Send = "123"
        self.present(vc, animated: true, completion: nil)
    }
}

