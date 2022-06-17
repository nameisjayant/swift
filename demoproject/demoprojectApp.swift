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
    var viewModel = MainViewModel()
    var stopwatch =  StopWatch()
    var pricingProvider = PricingProvider(price: Price(amount: "123",description: "bdhkddb"))
    
    var body: some Scene {
        WindowGroup {
            PriceView(pricingProvider: <#T##PricingProvider#>)
        }
    }
}
