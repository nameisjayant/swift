//
//  ParseJson.swift
//  demoproject
//
//  Created by jayant kumar on 1/17/22.
//

import Foundation

var name:[Names] = load("names.json")

func load<T:Decodable>(_ filename:String)->T {
    
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("couldn't find \(filename) in main bundle")
    }
    
    do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(file) from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(file) as \(T.self):\n\(error)")
        }
}
