//
//  TROLApp.swift
//  TROL
//
//  Created by MBSoo on 2022/06/07.
//

import SwiftUI

@main
struct TROLApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MyTravelView(selectedFriend: Friend.friends[0])
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
