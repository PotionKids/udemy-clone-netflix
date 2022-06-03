//
//  Movie.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import Foundation
import CoreImage

struct Movie: Identifiable {
    enum MovieType: String {
        case movie
        case tvshow
        
        enum Rating: String {
            case TVMA = "TV-MA"
        }
    }
    
    
    enum Resolution: String {
        case HD
    }
    
    struct Cast {
        var producer: String = "Ben Murphy"
        var director: String = "Erik Leijonborg"
        
        var actors: [String] = ["Alexander Dreymon, Emily Cox, David Dawson, Ian Hart, Harry McEntire, Eliza Butterworth, Tobias Santelmann"]
        
        var cast: String {
            actors.joined(separator: ", ")
        }
        var creators: String {
            "\(producer), \(director)"
        }
        
    }
    
    struct Episode: Identifiable {
        var id: Int = 0
        var title: String = "Bad Omens"
        var description: String = "Bad omens and border raids make Uhtred extra-vigilant at his northern outpost. King Sigtryggr is visited by his brother Rognvaldr"
        var thumbnailURL = URL(string: "")
        var videoURL = URL(string: "")
    }
    
    struct Season: Identifiable {
        var id: Int = 0
        var title: String?
        var episodes = [Episode(), Episode(), Episode(), Episode(), Episode()]
        var currentEpisode: Int? = 3
        var defaultEpisode = 1
        
        var currentEpisodeToDisplay: Int {
            currentEpisode ?? defaultEpisode
        }
    }
    
    struct CurrentSeasonAndEpisode {
        var seasonNumber: Int = 0
        var episodeNumber: Int = 0
        var title = "Bad Omens"
        var description = "Bad omens and border raids make Uhtred extra-vigilant at his northern outpost. King Sigtryggr is visited by his brother Rognvaldr"
        
        init(seasonNumber: Int = 0, episodeNumber: Int = 0, title: String = "Bad Omens", description: String = "Bad omens and border raids make Uhtred extra-vigilant at his northern outpost. King Sigtryggr is visited by his brother Rognvaldr") {
            self.seasonNumber = seasonNumber
            self.episodeNumber = episodeNumber
            self.title = title
            self.description = description
        }
    }
    
    var id: String = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    var date: Date = Date.now
    var movieType: MovieType = .tvshow
    var rating: MovieType.Rating = .TVMA
    var resolution: Resolution = .HD
    var cast: Cast = Cast()
    
    var promotionalHeadline: String?
    var currentSeason: Int? = 5
    var defaultSeason = 1
    
    var seasons = [Season(), Season(), Season(), Season(), Season()]
    
    var categories: [Category] = []
    var liked = true                // MARK: Comment - For initial testing purposes. Make sure to default
                                    // this to false in production.
    
    var year: String {
        Calendar.current.component(.year, from: date).description
    }
    
    var currentSeasonToDisplay: Int {
        currentSeason ?? defaultSeason
    }
    
    var currentSeasonAndEpisodeNumbers: (Int, Int) {
        (
            currentSeasonToDisplay,
            seasons[currentSeasonToDisplay - 1].currentEpisodeToDisplay
        )
    }
    
    var currentSeasonAndEpisode: CurrentSeasonAndEpisode {
        let seasonNumber = currentSeasonAndEpisodeNumbers.0
        let episodeNumber = currentSeasonAndEpisodeNumbers.1
        let season = seasons[seasonNumber - 1]
        let episode = season.episodes[episodeNumber - 1]
    
        return CurrentSeasonAndEpisode(seasonNumber: seasonNumber, episodeNumber: episodeNumber, title: episode.title, description: episode.description)
    }
}
