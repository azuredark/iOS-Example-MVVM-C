//
//  MovieEndpoints.swift
//  ExampleMVVM
//
//  Created by Oleh Kudinov on 01.10.18.
//

import Foundation

struct APIEndpoints {
    
    static func movies(query: String, page: Int) -> DataEndpoint<MoviesPage> {
        
        return DataEndpoint(path: "3/search/movie/",
                            queryParameters: ["query": query,
                                              "page": "\(page)"])
    }
    
    static func moviePoster(path: String, width: Int) -> DataEndpoint<Data> {
        
        let sizes = [92, 185, 500, 780]
        let availableWidth = sizes.sorted().first { width <= $0 } ?? sizes.last
        return DataEndpoint(path: "t/p/w\(availableWidth!)\(path)")
    }
}

