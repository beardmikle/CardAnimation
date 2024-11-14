//
//  CardAnimationApp.swift
//  CardAnimation
//
//  Created by beardmikle on 14.11.2024.
//

import SwiftUI

@main
struct CardAnimationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
