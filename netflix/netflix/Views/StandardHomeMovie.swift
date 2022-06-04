//
//  StandardHomeMovie.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL).resizable().resizable().scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: darkMovie)
    }
}
