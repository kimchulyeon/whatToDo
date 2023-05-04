//
//  myApp1App.swift
//  myApp1
//
//  Created by chulyeon kim on 2023/05/04.
//

import SwiftUI

@main
struct myApp1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            SplashView()
        }
    }
}
