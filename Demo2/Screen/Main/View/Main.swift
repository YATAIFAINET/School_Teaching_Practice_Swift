//
//  ViewController.swift
//  Demo2
//
//  Created by fainet on 2023/3/5.
//

import UIKit

class Main: BaseController {

    @IBOutlet weak var name_Label: UILabel!
    @IBOutlet weak var phone_Label: UILabel!
    @IBOutlet weak var address_Label: UILabel!
    var mMainModel:MainModel = .init();
}


///LifeCycle
extension Main {
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

//Update
extension Main {
    func UpdateUI()->Void {
        self.name_Label.text = self.mMainModel.getName();
        self.phone_Label.text = self.mMainModel.getPhone();
        self.address_Label.text = self.mMainModel.getAddress();
    }
}

//Button Action
extension Main {

    @IBAction func SetActionData (_sender:UIButton) {
        printLog(LogString: "SetActionData");
        SetData();
        UpdateUI();
    }
    @IBAction func ResetActionData (_sender:UIButton) {
        printLog(LogString: "ResetActionData");
        ResetData();
        UpdateUI();
    }
}







