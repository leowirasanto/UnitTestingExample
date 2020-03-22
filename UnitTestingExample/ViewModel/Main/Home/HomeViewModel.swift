//
//  HomeViewModel.swift
//  UnitTestingExample
//
//  Created by Leo Wirasanto on 20/03/20.
//  Copyright © 2020 Leo Wirasanto. All rights reserved.
//

import Foundation

class HomeViewModel {
    var classes: [UClass]? {
        return [
            UClass(className: "A", description: "This is the class A", ppUrl: Constant.DummyImageStringURL.dummyClassImage),
            UClass(className: "B", description: "This is the class B", ppUrl: Constant.DummyImageStringURL.dummyClassImage),
            UClass(className: "C", description: "This is the class C", ppUrl: Constant.DummyImageStringURL.dummyClassImage),
            UClass(className: "D", description: "This is the class D", ppUrl: Constant.DummyImageStringURL.dummyClassImage)
        ]
    }

    var students: [Student]? {
        return [
            Student(id: 0, fullname: "Bake", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "A", lastUpdate: "2020-03-27 13:14"),
            Student(id: 0, fullname: "Jane", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "A", lastUpdate: "2020-03-27 13:14"),
            Student(id: 0, fullname: "Gadi", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "B", lastUpdate: "2020-02-27 13:22"),
            Student(id: 0, fullname: "Oka", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "B", lastUpdate: "2020-03-27 14:14"),
            Student(id: 0, fullname: "Boni", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "D", lastUpdate: "2020-01-27 15:24"),
            Student(id: 0, fullname: "Jackson", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "D", lastUpdate: "2020-03-27 13:14"),
            Student(id: 0, fullname: "Lins", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "C", lastUpdate: "2020-01-27 11:23"),
            Student(id: 0, fullname: "Gordon", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "C", lastUpdate: "2020-03-27 13:54"),
            Student(id: 0, fullname: "Petrus", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "B", lastUpdate: "2020-03-27 09:19"),
            Student(id: 0, fullname: "Thomas", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "A", lastUpdate: "2020-03-27 22:24"),
            Student(id: 0, fullname: "Junior", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "D", lastUpdate: "2020-03-27 23:44"),
            Student(id: 0, fullname: "John", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "C", lastUpdate: "2020-03-27 24:24")
        ]
    }
}
