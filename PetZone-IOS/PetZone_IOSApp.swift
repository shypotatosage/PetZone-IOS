//
//  PetZone_IOSApp.swift
//  PetZone-IOS
//
//  Created by MacBook Pro on 22/05/23.
//

import SwiftUI

@main
struct PetZone_IOSApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            // ContentView()
            //      .environment(\.managedObjectContext, persistenceController.container.viewContext)
            MainView()
        }
    }
}
