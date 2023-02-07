//
//  ResultState.swift
//  AceNews
//
//  Created by Thomas G on 2/7/23.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
