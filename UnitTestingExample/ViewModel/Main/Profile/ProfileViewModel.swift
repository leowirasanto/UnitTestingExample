//
//  ProfileViewModel.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import Foundation

class ProfileViewModel {
    var profile: ProfileModel? {
        return ProfileModel(fullName: "Leo Wirasanto", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, nickname: "noobmaster", classId: "B", lastUpdate: "2020-03-27 20:31")
    }
    var friends: [Student] {
        let dummy = Student(id: 0, fullname: "dummy", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "C", lastUpdate: "2020-03-27 13:14")
        var temp: [Student] = []
        for _ in 0 ... 22 {
            temp.append(dummy)
        }
        return temp
    }
}
