//
//  demoprojectApp.swift
//  demoproject
//
//  Created by jayant kumar on 1/11/22.
//

import SwiftUI

@main
struct demoprojectApp: App {
    var apiService = ApiService()
    var body: some Scene {
        WindowGroup {
            DemoView()
        }
    }
}
