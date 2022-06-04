//
//  MoreLikeThisView.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/4/22.
//

import SwiftUI

struct MoreLikeThisView: View {
    var movie: Movie
    
    let columns =   [
                        GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ]
    
    var body: some View {
        ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(movie.moreLikeThis) { movie in
                        StandardHomeMovie(movie: movie)
                    }
                }
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movie: theLastKingdom)
    }
}
