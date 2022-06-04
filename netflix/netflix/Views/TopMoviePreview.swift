//
//  TopMoviePreview.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack{
                KFImage(movie.thumbnailURL).resizable().scaledToFill().clipped()
            }
            
            VStack {
                Spacer()
                categoriesList
                buttons
            }
            .foregroundColor(.white)
            .background(LinearGradient.topPreviewGradient)
            .padding(.top, screenHeight / 3)
            .background(.black.opacity(0.15))
        }
    }
    
    var categoriesList: some View {
        HStackCategories(categories: Constants.categories, delimiter: "circle.fill")
    }
    
    var buttons: some View {
        HStack {
            Spacer()
            myListButton
            Spacer()
            playButton
            Spacer()
            infoButton
            Spacer()
        }
    }
    
    var longPlayButton: some View {
        Button {
            //
        } label: {
            HStackButtonLabel(imageName: "play.fill", label: "Play", frameWidthScaling: 2.1)
        }

    }
    var longMyListButton: some View {
        Button {
            //
        } label: {
            HStackButtonLabel(imageName: "checkmark", label: "My List", frameWidthScaling: 2.1)
        }

    }
    
    var myListButton: some View {
        SmallVerticalButton(
            description: "My List",
            isOnImageName: "checkmark",
            isOffImageName: "plus",
            isOn: false){
                //
        }
    }
    var playButton: some View {
        Button {
            //
        } label: {
            HStackButtonLabel()
        }
    }
    var infoButton: some View {
        SmallVerticalButton(description: "Info", isOnImageName: "info.circle", isOffImageName: "info.circle", isOn: true) {
            //
        }
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: squidGame)
    }
}
