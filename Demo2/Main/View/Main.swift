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
    
    @IBAction func Action_SB (_sender:UIButton) {
        //使用第一種StoreBoard切換
        printLog(LogString: "Action_SB1");
    
        let mainStoryboard = UIStoryboard(name: "openXIB", bundle: Bundle.main)
        guard let vc = mainStoryboard.instantiateViewController(withIdentifier: "openxib") as? OpenXIB else {
            print("err")
            return
        }
        vc.xibTitle = "xib"
        //self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true, completion: nil);

    }
}







