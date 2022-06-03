//
//  netflixApp.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI

@main
struct netflixApp: App {
    var body: some Scene {
        WindowGroup {
//            HomeView()
            MovieDetailView(movie: theLastKingdom)
        }
    }
}
