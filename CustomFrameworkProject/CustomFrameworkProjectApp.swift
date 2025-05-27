//
//  CustomFrameworkProjectApp.swift
//  CustomFrameworkProject
//
//  Created by Nishant Ranjan on 27/5/25.
//

import SwiftUI

@main
struct CustomFrameworkProjectApp: App {
    let persistenceController = PersistenceController.shared

    init() {
        SDK.doSomeWork()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
