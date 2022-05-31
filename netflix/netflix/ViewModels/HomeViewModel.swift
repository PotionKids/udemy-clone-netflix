//
//  HomeViewModel.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    typealias Category = String
    
    @Published var movies: [Category: [Movie]] = [:]
    public var categories: [Category] {
        movies.keys.map {String($0)}
    }
    
    public func getMovies(for category: Category) -> [Movie] {
        movies[category] ?? [darkMovie]
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies[Constants.Categories.trendingNow] = moviesTrendingNow
        movies[Constants.Categories.standupComedy] = standupComedy
    }
}
