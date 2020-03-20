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
            Student(id: 0, fullname: "Bake", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "A"),
            Student(id: 0, fullname: "Jane", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "A"),
            Student(id: 0, fullname: "Gadi", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "B"),
            Student(id: 0, fullname: "Oka", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "B"),
            Student(id: 0, fullname: "Boni", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "D"),
            Student(id: 0, fullname: "Jackson", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "D"),
            Student(id: 0, fullname: "Lins", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "C"),
            Student(id: 0, fullname: "Gordon", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "C"),
            Student(id: 0, fullname: "Petrus", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "B"),
            Student(id: 0, fullname: "Thomas", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "A"),
            Student(id: 0, fullname: "Junior", ppUrl: Constant.DummyImageStringURL.dummyGirlStudent, classId: "D"),
            Student(id: 0, fullname: "John", ppUrl: Constant.DummyImageStringURL.dummyBoyStudent, classId: "C")
        ]
    }
}
