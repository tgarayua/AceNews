//
//  NewsEndpoint.swift
//  AceNews
//
//  Created by Thomas G on 2/7/23.
//

import Foundation

protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseUrl: URL { get }
    var path: String { get }
}

enum NewsAPI {
    case getNews
}

extension NewsAPI: APIBuilder {
    
    var baseUrl: URL {
        switch self {
        case .getNews:
            //MARK: Question: How can I do this without force unwrapping?
            return URL(string: "https://api.lil.software")!
        }
    }
    
    var path: String {
        return "/news"
    }
    
    var urlRequest: URLRequest {
        return URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
    }
}
