//
//  BaseViewController.swift
//  Demo2
//
//  Created by fainet on 2023/3/18.
//

import UIKit

class BaseController: UIViewController {

    let TAG:String ="Alex";
    override func viewDidLoad() {
        super.viewDidLoad()
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
