//
//  SBController.swift
//  Demo2
//
//  Created by fainet on 2023/4/15.
//

import UIKit

class SBController: BaseController {

    var Data:String = "Empty" {
        didSet {
            printLog(LogString: Data);
        }
    }

}


///LifeCycle
extension SBController {
    override func viewDidLoad() {
        super.viewDidLoad()
        printLog(LogString: Data+"ABC")
    }

    //OnStart
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    //OnResume
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    //OnStop
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    //OnDestory
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
}

//Action

extension SBController {
    @IBAction func XIBAction (_sender:UIButton) {
        // XIB Action
        printLog(LogString: "XIBAction")
        let vc:XibVC = .init()
        self.present(vc, animated: true, completion: nil)

    }
}








