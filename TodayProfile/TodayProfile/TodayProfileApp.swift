//
//  TodayProfileApp.swift
//  TodayProfile
//
//  Created by 박지승 on 2020/11/30.
//

import SwiftUI

@main
struct TodayProfileApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ProfileView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
