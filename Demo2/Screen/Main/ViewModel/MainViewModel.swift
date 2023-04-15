//
//  MainViewModel.swift
//  Demo2
//
//  Created by fainet on 2023/3/18.
//

///函式
extension Main {

    func SetData()->Void {
        self.mMainModel.setName(Name: "Alex");
        self.mMainModel.setPhone(Phone: "0987654333");
        self.mMainModel.setAddress(Address: "新北市");
    }

    func ResetData()->Void {
        self.mMainModel.ResetData();
    }
}
