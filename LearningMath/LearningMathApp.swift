//
//  LearningMathApp.swift
//  LearningMath
//
//  Created by Gerard Gomez on 2/3/22.
//

import SwiftUI

@main
struct LearningMathApp: App {
    @StateObject private var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
