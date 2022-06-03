//
//  MovieDetailView.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/2/22.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            Color.black.opacity(1).ignoresSafeArea()
            xButtonTopRight
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    movieThumbnail
                    movieInfoSubHeadline
                    if movie.promotionalHeadline != nil {
                        promotionHeadline(for: movie)
                            .padding(.top, screenHeight / 200)
                    }
                    redPlayButton
                    currentSeasonAndEpisodeToDisplay(for: movie)
                    castInfo(for: movie)
                    buttons
                }
                .foregroundColor(.white)
                .padding(.horizontal)
            }
        }
    }
    
    var movieInfoSubHeadline: some View {
        HStack {
            thumbsUp(for: movie)
            year(of: movie)
            rating(of: movie)
            seasons(of: movie)
            resolution(for: movie)
        }
    }
    
    var redPlayButton: some View { TemplatedViews.redPlayButtonFullFlexWidth
    }
    
    func thumbsUp(for movie: Movie) -> some View {
        Image(systemName: movie.liked ? "hand.thumbsup.fill" : "hand.thumbsup")
            .foregroundColor(.white)
            .font(.caption.bold())
    }
    
    func year(of movie: Movie) -> some View {
        Text(movie.year).font(.netflixSansMediumBody14).foregroundColor(.gray)
    }
    
    func rating(of movie: Movie) -> some View {
        Text(" \(movie.rating.rawValue) ").font(.netflixSansBoldBody12).padding(3).foregroundColor(.white.opacity(0.7)).background(.black.opacity(0.15)).cornerRadius(3)
    }
    
    func seasons(of movie: Movie) -> some View {
        Text("\(movie.seasons.count) Seasons").font(.netflixSansLightBody16).foregroundColor(.gray)
    }
    
    func resolution(for movie: Movie) -> some View {
        ZStack {
            Rectangle()
                .stroke(lineWidth: 1.5)
                .frame(width: 23, height: 15)
                .foregroundColor(.gray)
                .cornerRadius(2)
            Text(movie.resolution.rawValue)
                .font(.caption).bold()
                .foregroundColor(.white.opacity(0.6))
        }
    }
    
    func promotionHeadline(for movie: Movie) -> some View {
        Text(movie.promotionalHeadline ?? "").font(.netflixSansBoldBody(size: 18)).foregroundColor(.white.opacity(0.75))
    }
    
    var movieThumbnail: some View {
        ZStack {
            StandardHomeMovie(movie: movie)
                .frame(width: screenWidth / 3)
                .shadow(color: .black, radius: 5, x: 3, y: 3)
            newEpisodes
        }
        .padding(.top, screenHeight / 15)
    }
    
    var xButtonTopRight: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    //
                } label: {
                    xButtonLabel
                }

            }
            .padding(.horizontal)
            Spacer()
        }
    }
    
    var xButtonLabel: some View {
        ZStack {
            Circle()
                .foregroundColor(.black)
                .frame(width: screenWidth / 15, height: screenWidth / 15)
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .font(.body)
        }
    }
    
    var newEpisodes: some View {
        VStack {
            Spacer()
            Text("  NEW EPISODES  ")
                .font(.netflixSans(for: .bold, relativeTo: .caption, size: 12))
                .background(Constants.Colors.netflixRed)
                .foregroundColor(.white)
                .cornerRadius(1.5)
                .padding(.vertical, screenHeight / 150)
                .shadow(color: .black, radius: 1, x: 2, y: 2)
        }
    }
    
    var buttons: some View {
        HStack(spacing: screenWidth / 20) {
            TemplatedViews.myListVButton
                .padding()
            TemplatedViews.likedVButton
                .padding()
            TemplatedViews.shareVButton
                .padding()
            Spacer()
        }
    }
    
    func currentSeasonAndEpisodeToDisplay(for movie: Movie) -> some View {
        let currentSeasonAndEpisode = movie.currentSeasonAndEpisode
        let seasonAndEpisodeNumberString = "S\(currentSeasonAndEpisode.seasonNumber):E\(currentSeasonAndEpisode.episodeNumber)"
        return VStack {
            HStack {
                Text("\(seasonAndEpisodeNumberString) \(currentSeasonAndEpisode.title)")
                    .font(.netflixSansBoldBody(size: 18))
                    .opacity(0.9)
                Spacer()
            }
            Text(currentSeasonAndEpisode.description)
                .font(.netflixSans(for: .light, relativeTo: .body, size: 17))
                .frame(maxWidth: .infinity, alignment: .leading)
                .opacity(0.9)
        }
    }
    
    func castInfo(for movie: Movie) -> some View {
        return VStack {
            Text("Cast: \(movie.cast.cast)")
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Creators: \(movie.cast.creators)")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .font(.netflixSansLightBody14)
        .foregroundColor(.white.opacity(0.7))
        .padding(.vertical, 2)
    }
    
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: theLastKingdom)
    }
}
