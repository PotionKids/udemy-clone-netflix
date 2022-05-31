//
//  GlobalHelpers.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import Foundation

struct Constants {
    struct MovieThumbnailURLs {
        static let defaultURL = "https://picsum.photos/200/300"
        static let dark = "https://static.wikia.nocookie.net/netflix/images/4/44/Dark_S3_Poster_%281%29.jpg/revision/latest?cb=20200620223809"
    }
}


let darkMovie = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: (URL(string: Constants.MovieThumbnailURLs.dark) ?? URL(string: Constants.MovieThumbnailURLs.defaultURL)!))
