//
//  Stopwatch.swift
//  demoproject
//
//  Created by jayant kumar on 6/17/22.
//

import Foundation

class StopWatch : ObservableObject{
    
    @Published var count = 0
    
    var timer = Timer()
    
    func start(){
        self.timer = Timer.scheduledTimer(withTimeInterval:0.1,repeats: true){ timer in
            self.count += 1
        }
    
    }
    
    func stop(){
        timer.invalidate()
    }
    
    func reset(){
        count = 0
        timer.invalidate()
    }
    
}
