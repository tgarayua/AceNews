//
//  NewsResponse.swift
//  AceNews
//
//  Created by Thomas G on 2/7/23.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let author: String?
    let url: String
    let source, title, description: String
    let image: String
    let date: Date
    
}

enum CodingKeys: String, CodingKey {
    case author, url, source, title
    case articleDescription = "description"
    case image, date
}
