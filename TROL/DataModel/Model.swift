//
//  Model.swift
//  TROL
//
//  Created by Chicken on 2022/06/09.
//

import Foundation

// 전체적인 Travel 관리
final class TravelData: ObservableObject {
    @Published var travel: Travel = Travel(isExist: false, name: "", startDate: Date(), endDate: Date(), users: [User(name: "오션", myRole: nil, toDoList: nil)], usingRoles: [], travelCode: "")
    
    func saveTravel(isExist: Bool, name: String, startDate: Date, endDate: Date, usingRoles: [Role]) {
        self.travel.isExist = true
        self.travel.name = name
        self.travel.startDate = startDate
        self.travel.endDate = endDate
        self.travel.usingRoles = usingRoles
    }
}

// 앱이 기본적으로 제공해주는 역할 모음 + 커스텀 추가 가능
final class RoleData: ObservableObject {
    @Published var roles: [Role] = Role.defaultRoles
}

struct Travel {
    var isExist: Bool
    var name: String
    var startDate: Date
    var endDate: Date
    var users: [User]
    var usingRoles: [Role]
    var travelCode: String
}
    
//    mutating func saveTravel(isExist: Bool, name: String, startDate: Date, endDate: Date, usingRoles: [Role]) {
//        self.isExist = true
//        self.name = name
//        self.startDate = startDate
//        self.endDate = endDate
//        self.usingRoles = usingRoles
//    }

//class Travel: ObservableObject {
//    var isExist: Bool
//    var users: [User]
//    var name: String
//    var startDate: Date
//    var endDate: Date
//    var usingRoles: [Role]
//    var travelCode: String
//
//    init(isExist: Bool = false, name: String, startDate: Date, endDate: Date, users: [User], usingRoles: [Role], travelCode: String) {
//        self.isExist = isExist
//        self.name = name
//        self.startDate = startDate
//        self.endDate = endDate
//        self.users = users
//        self.usingRoles = usingRoles
//        self.travelCode = travelCode
//    }
//
//    func saveTravel(isExist: Bool, name: String, startDate: Date, endDate: Date, usingRoles: [Role]) {
//        self.isExist = true
//        self.name = name
//        self.startDate = startDate
//        self.endDate = endDate
//        self.usingRoles = usingRoles
//    }
//}


struct User {
    var name: String
    var myRole: Role?
    var toDoList: [ToDoList]?
}

extension User {
    static var myself = User(name: "오션", myRole: nil, toDoList: nil)
}

struct Role {
    var name: String
    var info: [String]
    var guide: [String]
    var introducingSentence: String
    var isChecked: Bool
}

struct ToDoList {
    var id: Int
    var title: String
    var isChecked: Bool
}

