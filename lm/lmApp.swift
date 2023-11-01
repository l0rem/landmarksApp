//
//  lmApp.swift
//  lm
//
//  Created by Nik Lorem on 15.10.23.
//

import SwiftUI

@main
struct lmApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
