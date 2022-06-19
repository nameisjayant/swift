//
//  demoprojectApp.swift
//  demoproject
//
//  Created by jayant kumar on 1/11/22.
//

import SwiftUI

@main
struct demoprojectApp: App {
    
    @StateObject var viewModel:TodoViewModel = TodoViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                TodoListView()
            }.navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(viewModel)
        }
    }
}
