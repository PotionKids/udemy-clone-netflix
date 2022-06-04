//
//  StandardMovieDetail.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/5/22.
//

import SwiftUI
import Kingfisher

struct StandardMovieDetail: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.detailImageURL).resizable().scaledToFit()
    }
}

struct StandardMovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: theLastCzar)
    }
}
