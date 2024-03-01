//
//  KaamilApp.swift
//  Kaamil
//
//  Created by mouhamad kounta on 01/03/2024.
//

import SwiftUI
import CoreData // Importer CoreData ici

@main
struct KaamilApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

class PersistenceController {
    static let shared = PersistenceController()

    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "KaamilAppModel") // Remplacer "KaamilAppModel" par le nom de votre modèle CoreData
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }
}
