//
//  GlobalHelpers.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import Foundation
import SwiftUI

struct Constants {
    struct Colors {
//        static let netflixRed = Color(red: 229 / 255, green: 9 / 255, blue: 20 / 255)
        static let delta:CGFloat = 10
        static let k: CGFloat = -2.3
        static let netflixRed = Color(red: (229 + k * delta) / 255, green: (9 + k * delta) / 255, blue: (20 + k * delta) / 255)
    }
    
    struct MovieThumbnailURLs {
        
        //MARK: Categories
        //MARK: Trending Now
        static let defaultURL =
                        URL(string: "https://picsum.photos/200/300")!
        static let dark =
                        URL(string: "https://static.wikia.nocookie.net/netflix/images/4/44/Dark_S3_Poster_%281%29.jpg/revision/latest?cb=20200620223809") ?? defaultURL
        static let theLastKingdom =
                        URL(string: "https://flxt.tmsimg.com/assets/p18130758_b_v9_aa.jpg") ?? defaultURL
        static let ertugrul =
                        URL(string: "https://image.tmdb.org/t/p/original/rOar34cNLn2sgDH5FmAa1bvMpBv.jpg") ?? defaultURL
        static let theBoldType =
                        URL(string: "https://m.media-amazon.com/images/M/MV5BOWIwM2Q3MDItZGRhNC00MzllLWFlY2ItZmUxYmY5ZjRjZDUwXkEyXkFqcGdeQXVyNTk0NTc1NDA@._V1_.jpg") ?? defaultURL
        static let theEnglishGame = URL(string: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-9373203670.jpg") ?? defaultURL
        static let theKing = URL(string: "https://m.media-amazon.com/images/M/MV5BOGZhMWFhMTAtNGM3Ni00MTdhLTg3NmMtMDViYTc5ODVkZWVlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg") ?? defaultURL
        
        // Top Preview
        static let rrr = URL(string: "https://www.tollywood.net/wp-content/uploads/2022/05/Official-RRR-is-loading-on-Netflix-on-this-date.jpg") ?? defaultURL
        static let squidGame = URL(string: "https://pbs.twimg.com/media/FAe86eCVkAEOX2b.jpg") ?? defaultURL
        
        // MARK: Standup Comedy
        
        static let trevorNoah = URL(string: "https://img.reelgood.com/content/movie/8ae24be0-8d9f-4ac3-a049-d96b3c8b7685/poster-780.jpg") ?? defaultURL
        static let aliWong = URL(string: "https://bingeddata.s3.amazonaws.com/uploads/2020/11/ali-wong-hard-knock-wife.jpg") ?? defaultURL
        static let billBurr = URL(string: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_FMjpg_UX1000_.jpg") ?? defaultURL
        static let tiffanyHaddish = URL(string: "https://m.media-amazon.com/images/M/MV5BZTU5ODY2MDEtMzAyNC00MmJkLThiZjgtMDVjZDEwY2YyNGRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_FMjpg_UX1000_.jpg") ?? defaultURL
        static let chrisRock = URL(string: "https://m.media-amazon.com/images/M/MV5BMjEwMjZhODUtNTU2Ny00YWNlLTk1Y2QtZTFjMzg1YjM3ZjYzXkEyXkFqcGdeQXVyMjExNzMxNQ@@._V1_FMjpg_UX1000_.jpg") ?? defaultURL
        static let kevinHart = URL(string: "https://m.media-amazon.com/images/M/MV5BMzlhZGM5ODUtMTU1MS00MjQ5LWJkNGQtY2RhYzkyZjFmZTBlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg") ?? defaultURL
        
        //MARK: Sci-Fi Movies
        static let oxygen = URL(string: "https://images2.minutemediacdn.com/image/fetch/c_fill,g_auto,f_auto,h_2222,w_1500/https%3A%2F%2F1428elm.com%2Ffiles%2Fimage-exchange%2F2017%2F07%2Fie_70123.jpeg") ?? defaultURL
        static let theMidnightSky = URL(string: "https://static.wikia.nocookie.net/netflix/images/b/b5/The_Midnight_Sky_Poster_01.jpg/revision/latest?cb=20201231212741") ?? defaultURL
        static let cloneWars = URL(string: "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/01/SWCW-Key-Art2.jpg?fit=bounds&width=1280&height=720") ?? defaultURL
        static let dontLookUp = URL(string: "https://pics.filmaffinity.com/Don_t_Look_Up-492729563-large.jpg") ?? defaultURL
        static let theCloverfieldParadox = URL(string: "https://images.squarespace-cdn.com/content/v1/56703629cbced6261535a355/1517798598709-CUWM0Q6EG7URZBJJRCC9/upload.jpg") ?? defaultURL
        static let spaceSweepers = URL(string: "https://images.ctfassets.net/4cd45et68cgf/4FYCQ9Fa9xSNYo1inMFDAf/d9f81271d56ad30b38e18f09761b374b/SWE_TeaserKA_Vertical_RGB_US-EN.jpg?w=2560") ?? defaultURL
        
        
    }
    
    struct MovieNames {
        static let dark = "DARK"
        static let theLastKingdom = "The Last Kingdom"
        static let ertugrul = "Dirillis Ertugrul"
        static let theBoldType = "The Bold Type"
        static let theEnglishGame = "The English Game"
        static let theKing = "The King"
        
        static let trevorNoah = "Afraid of the Dark"
        static let aliWong = "Hard Knock Wife"
        static let billBurr = "Walk Your Way Out"
        static let tiffanyHaddish = "Black Mitzvah"
        static let chrisRock = "Total Blackout"
        static let kevinHart = "Zero Fucks Given"
        
        static let rrr = "RRR"
        static let squidGame = "Squid Game"
        
        static let oxygen = "Oxygen"
        static let theMidnightSky = "The Midnight Sky"
        static let cloneWars = "Clone Wars"
        static let dontLookUp = "Don't Look Up"
        static let theCloverfieldParadox = "The Cloverfield Paradox"
        static let spaceSweepers = "Space Sweepers"
    }
    
    struct Categories {
        static let trendingNow = "Trending Now"
        static let standupComedy = "Stand-Up Comedy"
        static let newReleases = "New Releases"
        static let watchItAgain = "Watch it Again"
        static let sciFiMovies = "Sci-Fi Movies"
    }
}

let categories = ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"]

let darkMovie      = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.dark,
                                thumbnailURL: Constants.MovieThumbnailURLs.dark,
                                categories: categories
                            )
let theLastKingdom = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theLastKingdom,
                                thumbnailURL: Constants.MovieThumbnailURLs.theLastKingdom,
                                promotionalHeadline: "Watch Season 5 Now",
                                categories: categories
                            )
let ertugrul       = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.ertugrul,
                                thumbnailURL: Constants.MovieThumbnailURLs.ertugrul,
                                categories: categories
                            )
let theBoldType    = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theBoldType,
                                thumbnailURL: Constants.MovieThumbnailURLs.theBoldType,
                                categories: categories
                            )
let theEnglishGame = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theEnglishGame,
                                thumbnailURL: Constants.MovieThumbnailURLs.theEnglishGame,
                                categories: categories
                            )
let theKing        = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theKing,
                                thumbnailURL: Constants.MovieThumbnailURLs.theKing,
                                categories: categories
                            )

let rrr            = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.rrr,
                                thumbnailURL: Constants.MovieThumbnailURLs.rrr,
                                categories: categories
                            )
let squidGame      = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.squidGame,
                                thumbnailURL: Constants.MovieThumbnailURLs.squidGame,
                                categories: categories
                            )


let trevorNoah     = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.trevorNoah,
                                thumbnailURL: Constants.MovieThumbnailURLs.trevorNoah,
                                categories: categories
                            )
let aliWong        = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.aliWong,
                                thumbnailURL: Constants.MovieThumbnailURLs.aliWong,
                                categories: categories
                            )
let billBurr       = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.billBurr,
                                thumbnailURL: Constants.MovieThumbnailURLs.billBurr,
                                categories: categories
                            )
let tiffanyHaddish = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.tiffanyHaddish,
                                thumbnailURL: Constants.MovieThumbnailURLs.tiffanyHaddish,
                                categories: categories
                            )
let chrisRock      = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.chrisRock,
                                thumbnailURL: Constants.MovieThumbnailURLs.chrisRock,
                                categories: categories
                            )
let kevinHart      = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.kevinHart,
                                thumbnailURL: Constants.MovieThumbnailURLs.kevinHart,
                                categories: categories
                            )


let oxygen         = Movie  (id: UUID().uuidString, name: Constants.MovieNames.oxygen, thumbnailURL: Constants.MovieThumbnailURLs.oxygen, categories: categories)
let theMidnightSky = Movie  (id: UUID().uuidString, name: Constants.MovieNames.theMidnightSky, thumbnailURL: Constants.MovieThumbnailURLs.theMidnightSky, categories: categories)
let cloneWars      = Movie  (id: UUID().uuidString, name: Constants.MovieNames.cloneWars, thumbnailURL: Constants.MovieThumbnailURLs.cloneWars, categories: categories)
let dontLookUp     = Movie  (id: UUID().uuidString, name: Constants.MovieNames.dontLookUp, thumbnailURL: Constants.MovieThumbnailURLs.dontLookUp, categories: categories)
let theCloverfieldParadox
                   = Movie  (id: UUID().uuidString, name: Constants.MovieNames.theCloverfieldParadox, thumbnailURL: Constants.MovieThumbnailURLs.theCloverfieldParadox, categories: categories)
let spaceSweepers  = Movie  (id: UUID().uuidString, name: Constants.MovieNames.spaceSweepers, thumbnailURL: Constants.MovieThumbnailURLs.spaceSweepers, categories: categories)


let moviesTrendingNow   = [
                            darkMovie,
                            theLastKingdom,
                            ertugrul,
                            theBoldType,
                            theEnglishGame,
                            theKing
                        ]

let standupComedy       = [
                                chrisRock,
                                trevorNoah,
                                billBurr,
                                kevinHart,
                                tiffanyHaddish,
                                aliWong
                          ]

let sciFi               = [
                             oxygen,
                             theMidnightSky,
                             cloneWars,
                             dontLookUp,
                             theCloverfieldParadox,
                             spaceSweepers
                          ]

let newReleases         = (moviesTrendingNow + standupComedy).shuffled()
let watchItAgain        = (standupComedy + sciFi).shuffled()
