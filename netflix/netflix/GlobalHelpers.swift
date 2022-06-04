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
    
    static let categories = ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"]
    
    struct MovieThumbnailURLs {
        
        //MARK: Categories
        //MARK: Trending Now
        static let defaultURL =
                        URL(string: "https://picsum.photos/200/300")!
        static let dark =
                        URL(string: "https://static.wikia.nocookie.net/netflix/images/4/44/Dark_S3_Poster_%281%29.jpg/revision/latest?cb=20200620223809") ?? defaultURL
        static let theLastKingdom =
                        URL(string: "https://seuladogeek.com.br/wp-content/uploads/2022/03/The-Last-Kingdom-serie-768x1075.jpg") ?? defaultURL
        static let theLastKingdomDetail = URL(string: "https://flxt.tmsimg.com/assets/p18130758_b_v9_aa.jpg") ?? defaultURL
        static let ertugrul =
                        URL(string: "https://image.tmdb.org/t/p/original/rOar34cNLn2sgDH5FmAa1bvMpBv.jpg") ?? defaultURL
        static let theBoldType =
                        URL(string: "https://m.media-amazon.com/images/M/MV5BOWIwM2Q3MDItZGRhNC00MzllLWFlY2ItZmUxYmY5ZjRjZDUwXkEyXkFqcGdeQXVyNTk0NTc1NDA@._V1_.jpg") ?? defaultURL
        static let theEnglishGame = URL(string: "https://www.tvguide.com/a/img/catalog/provider/1/1/1-9373203670.jpg") ?? defaultURL
        static let theEnglishGameDetail = URL(string: "https://territorystudio.com/wp-content/uploads/2020/03/Film_TheEnglishGame_L_011-1.jpg") ?? defaultURL
        
        static let theKing = URL(string: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/d0358a50-43b0-4b84-861c-fa40613958de/ddx042h-eb272aab-d44f-48a9-94aa-ac0d10e1dd6e.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2QwMzU4YTUwLTQzYjAtNGI4NC04NjFjLWZhNDA2MTM5NThkZVwvZGR4MDQyaC1lYjI3MmFhYi1kNDRmLTQ4YTktOTRhYS1hYzBkMTBlMWRkNmUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ouz3LqJvdBng9vyAyk7-PIWEeEdjIq9hzcXTbuJoXPU") ?? defaultURL
        static let theKingDetail = URL(string: "https://m.media-amazon.com/images/M/MV5BOGZhMWFhMTAtNGM3Ni00MTdhLTg3NmMtMDViYTc5ODVkZWVlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg") ?? defaultURL
        
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
        
        
        // More Like The Last Kingdom
        
        static let theAgeOfSamurai = URL(string: "https://img.reelgood.com/content/show/49781a1c-ca45-4b6d-9c8d-14837845de5f/poster-780.jpg") ?? defaultURL
        // "https://flxt.tmsimg.com/assets/p18661815_b_v9_aa.jpg"
        static let theAgeOfSamuraiDetail = URL(string: "https://img.reelgood.com/content/show/49781a1c-ca45-4b6d-9c8d-14837845de5f/poster-780.jpg") ?? defaultURL
        
        static let ottomanEmpire = URL(string: "https://flxt.tmsimg.com/assets/p17810281_b_v9_ac.jpg") ?? defaultURL
        static let ottomanEmpireDetail = URL(string: "https://droidjournal.com/wp-content/uploads/2020/07/AAAABQ6uI_u3G_Jo0OMbGAuKm7AjmJBUsVoYWWy0ovWgLMdsdavcFdIQ5egQ48FfuY5RNJj50IsMmsTngoL90Vt34rhoSZg1Ms056i2jBEXualOBHk7j9znFXxZ2fXpDUw.jpg") ?? defaultURL
        
        static let romanEmpire = URL(string: "https://image.tmdb.org/t/p/original/qgNeJnrEcwN0DmJ9SSjForHOvop.jpg") ?? defaultURL
        static let romanEmpireDetail = URL(string: "https://cdn.playpilot.tech/9895dae4499111ea969a0aaf844dcdf6/src/img?optimizer=image&quality=75&width=1280&aspect_ratio=16%3A9") ?? defaultURL
        
        static let theLastCzar = URL(string: "https://flxt.tmsimg.com/assets/p17060761_b_v9_aa.jpg") ?? defaultURL
        static let theLastCzarDetail = URL(string: "https://res.cloudinary.com/jerrick/image/upload/v1583595460/5e63bfc431f1b6001c677161.jpg") ?? defaultURL
        
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
        
        static let ottomanEmpire = "Rise of Empires | Ottoman"
        static let romanEmpire = "Roman Empire"
        static let theAgeOfSamurai = "The Age of Samurai"
        static let theLastCzar = "The Last Czar"
    }
    
    struct Categories {
        static let trendingNow = "Trending Now"
        static let standupComedy = "Stand-Up Comedy"
        static let newReleases = "New Releases"
        static let watchItAgain = "Watch it Again"
        static let sciFiMovies = "Sci-Fi Movies"
        static let historicalDocumentaries = "Historical Documentaries"
    }
}

let darkMovie      = Movie  (
                                name: Constants.MovieNames.dark,
                                thumbnailURL: Constants.MovieThumbnailURLs.dark
                            )
let theLastKingdom = Movie  (
                                name: Constants.MovieNames.theLastKingdom,
                                thumbnailURL: Constants.MovieThumbnailURLs.theLastKingdom,
                                detailImageURL: Constants.MovieThumbnailURLs.theLastKingdomDetail,
                                moreLikeThis: [ottomanEmpire, theAgeOfSamurai, romanEmpire, ertugrul, theLastCzar, theEnglishGame],
                                promotionalHeadline: "Watch Season 5 Now"
                            )
let ertugrul       = Movie  (
                                name: Constants.MovieNames.ertugrul,
                                thumbnailURL: Constants.MovieThumbnailURLs.ertugrul
                            )
let theBoldType    = Movie  (
                                name: Constants.MovieNames.theBoldType,
                                thumbnailURL: Constants.MovieThumbnailURLs.theBoldType
                            )
let theEnglishGame = Movie  (
                                name: Constants.MovieNames.theEnglishGame,
                                thumbnailURL: Constants.MovieThumbnailURLs.theEnglishGame
                            )
let theKing        = Movie  (
                                name: Constants.MovieNames.theKing,
                                thumbnailURL: Constants.MovieThumbnailURLs.theKing,
                                detailImageURL: Constants.MovieThumbnailURLs.theKingDetail
                            )

let rrr            = Movie  (
                                name: Constants.MovieNames.rrr,
                                thumbnailURL: Constants.MovieThumbnailURLs.rrr
                            )
let squidGame      = Movie  (
                                name: Constants.MovieNames.squidGame,
                                thumbnailURL: Constants.MovieThumbnailURLs.squidGame
                            )


let trevorNoah     = Movie  (
                                name: Constants.MovieNames.trevorNoah,
                                thumbnailURL: Constants.MovieThumbnailURLs.trevorNoah
                            )
let aliWong        = Movie  (
                                name: Constants.MovieNames.aliWong,
                                thumbnailURL: Constants.MovieThumbnailURLs.aliWong
                            )
let billBurr       = Movie  (
                                name: Constants.MovieNames.billBurr,
                                thumbnailURL: Constants.MovieThumbnailURLs.billBurr
                            )
let tiffanyHaddish = Movie  (
                                name: Constants.MovieNames.tiffanyHaddish,
                                thumbnailURL: Constants.MovieThumbnailURLs.tiffanyHaddish
                            )
let chrisRock      = Movie  (
                                name: Constants.MovieNames.chrisRock,
                                thumbnailURL: Constants.MovieThumbnailURLs.chrisRock
                            )
let kevinHart      = Movie  (
                                name: Constants.MovieNames.kevinHart,
                                thumbnailURL: Constants.MovieThumbnailURLs.kevinHart
                            )

let oxygen         = Movie  (name: Constants.MovieNames.oxygen, thumbnailURL: Constants.MovieThumbnailURLs.oxygen)
let theMidnightSky = Movie  (name: Constants.MovieNames.theMidnightSky, thumbnailURL: Constants.MovieThumbnailURLs.theMidnightSky)
let cloneWars      = Movie  (name: Constants.MovieNames.cloneWars, thumbnailURL: Constants.MovieThumbnailURLs.cloneWars)
let dontLookUp     = Movie  (name: Constants.MovieNames.dontLookUp, thumbnailURL: Constants.MovieThumbnailURLs.dontLookUp)
let theCloverfieldParadox
                   = Movie  (name: Constants.MovieNames.theCloverfieldParadox, thumbnailURL: Constants.MovieThumbnailURLs.theCloverfieldParadox)
let spaceSweepers  = Movie  (name: Constants.MovieNames.spaceSweepers, thumbnailURL: Constants.MovieThumbnailURLs.spaceSweepers)


let ottomanEmpire  = Movie  (name: Constants.MovieNames.ottomanEmpire, thumbnailURL: Constants.MovieThumbnailURLs.ottomanEmpire, detailImageURL: Constants.MovieThumbnailURLs.ottomanEmpireDetail)

let romanEmpire    = Movie  (name: Constants.MovieNames.romanEmpire, thumbnailURL: Constants.MovieThumbnailURLs.romanEmpire, detailImageURL: Constants.MovieThumbnailURLs.romanEmpireDetail)

let theAgeOfSamurai = Movie (name: Constants.MovieNames.theAgeOfSamurai, thumbnailURL: Constants.MovieThumbnailURLs.theAgeOfSamurai, detailImageURL: Constants.MovieThumbnailURLs.theAgeOfSamuraiDetail)

let theLastCzar    = Movie  (name: Constants.MovieNames.theLastCzar, thumbnailURL: Constants.MovieThumbnailURLs.theLastCzar, detailImageURL: Constants.MovieThumbnailURLs.theLastCzarDetail)


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

let historicalDocumentaries = [
                            ottomanEmpire,
                            romanEmpire,
                            ertugrul,
                            theLastCzar,
                            theLastKingdom,
                            theAgeOfSamurai
                          ]

let newReleases         = (moviesTrendingNow + standupComedy).shuffled()
let watchItAgain        = (standupComedy + sciFi).shuffled()
