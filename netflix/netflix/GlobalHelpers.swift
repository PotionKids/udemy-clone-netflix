//
//  GlobalHelpers.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import Foundation

struct Constants {
    struct MovieThumbnailURLs {
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
        
        static let trevorNoah = URL(string: "https://img.reelgood.com/content/movie/8ae24be0-8d9f-4ac3-a049-d96b3c8b7685/poster-780.jpg") ?? defaultURL
        static let aliWong = URL(string: "https://images.squarespace-cdn.com/content/v1/5a8c9c9f6f4ca3417800bcdc/1531946849114-1VIZ7UM56PA8ZX3X7P5T/Ali_Wong_thumb_1696x2036.jpg?format=2500w") ?? defaultURL
        static let billBurr = URL(string: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_FMjpg_UX1000_.jpg") ?? defaultURL
        static let tiffanyHaddish = URL(string: "https://m.media-amazon.com/images/M/MV5BZTU5ODY2MDEtMzAyNC00MmJkLThiZjgtMDVjZDEwY2YyNGRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_FMjpg_UX1000_.jpg") ?? defaultURL
        static let chrisRock = URL(string: "https://m.media-amazon.com/images/M/MV5BMjEwMjZhODUtNTU2Ny00YWNlLTk1Y2QtZTFjMzg1YjM3ZjYzXkEyXkFqcGdeQXVyMjExNzMxNQ@@._V1_FMjpg_UX1000_.jpg") ?? defaultURL
        static let kevinHart = URL(string: "https://m.media-amazon.com/images/M/MV5BMzlhZGM5ODUtMTU1MS00MjQ5LWJkNGQtY2RhYzkyZjFmZTBlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg") ?? defaultURL
        
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
    }
    
    struct Categories {
        static let trendingNow = "Trending Now"
        static let standupComedy = "Standup Comedy"
    }
}

let darkMovie      = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.dark,
                                thumbnailURL: Constants.MovieThumbnailURLs.dark
                            )
let theLastKingdom = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theLastKingdom,
                                thumbnailURL: Constants.MovieThumbnailURLs.theLastKingdom
                            )
let ertugrul       = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.ertugrul,
                                thumbnailURL: Constants.MovieThumbnailURLs.ertugrul
                            )
let theBoldType    = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theBoldType,
                                thumbnailURL: Constants.MovieThumbnailURLs.theBoldType
                            )
let theEnglishGame = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theEnglishGame,
                                thumbnailURL: Constants.MovieThumbnailURLs.theEnglishGame
                            )
let theKing        = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.theKing,
                                thumbnailURL: Constants.MovieThumbnailURLs.theKing
                            )


let trevorNoah     = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.trevorNoah,
                                thumbnailURL: Constants.MovieThumbnailURLs.trevorNoah
                            )
let aliWong        = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.aliWong,
                                thumbnailURL: Constants.MovieThumbnailURLs.aliWong
                            )
let billBurr       = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.billBurr,
                                thumbnailURL: Constants.MovieThumbnailURLs.billBurr
                            )
let tiffanyHaddish = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.tiffanyHaddish,
                                thumbnailURL: Constants.MovieThumbnailURLs.tiffanyHaddish
                            )
let chrisRock      = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.chrisRock,
                                thumbnailURL: Constants.MovieThumbnailURLs.chrisRock
                            )
let kevinHart      = Movie  (
                                id: UUID().uuidString,
                                name: Constants.MovieNames.kevinHart,
                                thumbnailURL: Constants.MovieThumbnailURLs.kevinHart
                            )

let moviesTrendingNow   = [
                            darkMovie,
                            theLastKingdom,
                            ertugrul,
                            theBoldType,
                            theEnglishGame,
                            theKing
                        ]

let standupComedy       = [
                                trevorNoah,
                                aliWong,
                                billBurr,
                                tiffanyHaddish,
                                chrisRock,
                                kevinHart
                          ]
