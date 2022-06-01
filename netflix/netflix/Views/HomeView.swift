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
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ZStack(alignment: .top) {
                        topMoviePreview
                        TopRowButtons()
                    }
                    vStackCategories(for: homeVM.categories)
                }
            }
        }
        .foregroundColor(.white)
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
    
    var topMoviePreview: some View {
        TopMoviePreview(movie: squidGame)
            .padding(.bottom, screenHeight / 30)
    }

    
    func vStackCategories(for categories: [Category]) -> some View {
        ForEach(categories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category).font(.title3).bold()
                    Spacer()
                }
                hScrollMovies(for: category)
            }
        }
    }
    
    func hScrollMovies(for category: Category) -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(homeVM.getMovies(for: category)) { movie in
                    StandardHomeMovie(movie: movie)
                        .frame(width: screenWidth / 3, height: screenHeight / 4)
                        .scaledToFill()
                        .padding(.horizontal)
                }
            }
        }
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

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image("Netflix Logo")
            }
            Spacer()
            Button {
                //
            } label: {
                Text("TV Shows")
            }
            Spacer()
            Button {
                //
            } label: {
                Text("Movies")
            }
            Spacer()
            Button {
                //
            } label: {
                Text("My List")
            }
        }
        .font(.headline)
        .foregroundColor(.white)
        .padding(.horizontal, screenWidth / 10)
        .offset(y: screenHeight / 20)
    }
}
