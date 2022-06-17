//
//  StateView.swift
//  demoproject
//
//  Created by jayant kumar on 6/17/22.
//

import SwiftUI

struct StateView: View {
    @StateObject var viewModel:MainViewModel
    @StateObject var stopwatch :StopWatch
    var body: some View {
        VStack{
            HStack{
                Button("Start"){
                    stopwatch.start()
                }
                Button("Stop"){
                    stopwatch.stop()
                }
                Button("Reset"){
                    stopwatch.reset()
                }
            }
            Text("\(stopwatch.count)")
        }.font(.largeTitle)
    }
}


struct PriceView : View{
    @StateObject var pricingProvider:PricingProvider
    var body : some View{
        
        VStack{
            Group{
                if let price = pricingProvider.price{
                    Text(price.amount).bold() + Text(price.description).font(.system(size:12))
                }else{
                    Text("Price not available")
                                        .italic()
                                        .foregroundColor(.gray)
                }
            } .font(.system(size: 16))
            
            Button("Fetch"){
                pricingProvider.fetch()
            }
        }
    }
    
}
