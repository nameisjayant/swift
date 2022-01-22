//
//  ApiState.swift
//  demoproject
//
//  Created by jayant kumar on 1/17/22.
//

import Foundation

enum ApiState {

    case Success(Post)
    case Failure(String)
    case Loading
}
