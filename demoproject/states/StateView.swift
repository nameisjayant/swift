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

