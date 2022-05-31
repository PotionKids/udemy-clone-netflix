//
//  HomeView.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var homeVM = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack {
                    ForEach(homeVM.categories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category).font(.title2).bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(homeVM.getMovies(for: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: screenWidth / 2, height: screenHeight / 3)
                                            .scaledToFill()
                                            .padding(.horizontal)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

extension View {
    var bounds: CGRect {
        UIScreen.main.bounds
    }
    
    var screenWidth: CGFloat {
        bounds.width
    }
    
    var screenHeight: CGFloat {
        bounds.height
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
