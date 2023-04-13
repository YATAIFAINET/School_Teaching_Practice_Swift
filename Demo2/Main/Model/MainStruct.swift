//
//  MainStruct.swift
//  Demo2
//
//  Created by fainet on 2023/3/18.
//

struct MainModel {
    private var Name:String?;
    private var Phone:String?;
    private var Address:String?;

    init() {
        ResetData();
    }

    mutating func getName() ->String {
        return self.Name ?? "";
    }
    mutating func getPhone() ->String {
        return self.Phone  ?? "";
    }
    mutating func getAddress() ->String {
        return self.Address  ?? "";
    }

    mutating func setName(Name:String) ->Void {
        self.Name = Name;
    }
    mutating func setPhone(Phone:String) ->Void {
        self.Phone = Phone;

    }
    mutating func setAddress(Address:String) ->Void {
        self.Address = Address;
    }

    mutating func ResetData() ->Void {
        self.Name = "Demo"
        self.Phone = "0900000000"
        self.Address = "DefaultAddress";
    }
}

