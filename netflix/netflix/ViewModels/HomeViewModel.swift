//
//  HomeViewModel.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import Foundation

typealias Category = String

class HomeViewModel: ObservableObject {
    
    @Published var movies: [Category: [Movie]] = [:]
    public var categories: [Category] {
        movies.keys.map {String($0)}.sorted()
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
        movies[Constants.Categories.newReleases] = newReleases
        movies[Constants.Categories.watchItAgain] = watchItAgain
        movies[Constants.Categories.sciFiMovies] = sciFi
    }
}
