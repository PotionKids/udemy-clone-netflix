//
//  ViewTemplates.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI

struct ViewTemplates: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HStack {
                    TemplatedViews.whitePlayButtonHalfWidth
                    TemplatedViews.whiteMyListButtonHalfWidthUnselected
                }
                HStack {
                    TemplatedViews.whitePlayButtonThirdWidth
                    TemplatedViews.whitePlayButtonThirdWidth
                    TemplatedViews.whitePlayButtonThirdWidth
                }
                HStack {
                    TemplatedViews.whitePlayButtonFullWidth
                }
                TemplatedViews.redPlayButtonFullWidth
                TemplatedViews.redPlayButtonFullFlexWidth
            }
        }
    }
}

struct TemplatedViews {
    static let whitePlayButtonFullWidth = HWhitePlayButtonXWidth(frameWidthScaling: 1)
    static let whitePlayButtonHalfWidth = HWhitePlayButtonXWidth(frameWidthScaling: 2)
    static let whitePlayButtonThirdWidth = HWhitePlayButtonXWidth(frameWidthScaling: 3.15)
    
    static let whiteMyListButtonHalfWidthSelected = HWhiteMyListButtonXWidth(frameWidthScaling: 2.1)
    static let whiteMyListButtonHalfWidthUnselected = HButtonLabelWhiteXWidth(imageName: "plus", label: "My List", frameWidthScaling: 2.1)
    static let redPlayButtonFullWidth = HRedPlayButtonXWidth(frameWidthScaling: 1.01, frameHeightScaling: 20)
    static let redPlayButtonFullFlexWidth = HStackFlexibleButtonLabel(frameHeightScaling: 20, backgroundColor: Constants.Colors.netflixRed, foregroundColor: .white)
    static let myListVButton = SmallVerticalButton(description: "My List", isOnImageName: "checkmark", isOffImageName: "plus", isOn: true) {
        //
    }
    static let likedVButton = SmallVerticalButton(description: "Liked", isOnImageName: "hand.thumbsup.fill", isOffImageName: "hand.thumbsup", isOn: true) {
        //
    }
    static let shareVButton = SmallVerticalButton(description: "Share", isOnImageName: "paperplane", isOffImageName: "paperplane", isOn: true) {
        //
    }
}

struct HColorPlayButtonXWidth: View {
    var backgroundColor: Color = .white
    var foregroundColor: Color = .black
    var frameWidthScaling: CGFloat
    var frameHeightScaling: CGFloat
    
    var body: some View {
        HStackButtonLabel(imageName: "play.fill", label: "Play", backgroundColor: backgroundColor, foregroundColor: foregroundColor, frameWidthScaling: frameWidthScaling, frameHeightScaling: frameHeightScaling)
    }
}

//struct HRedPlayButton

struct HRedPlayButtonXWidth: View {
    var frameWidthScaling: CGFloat
    var frameHeightScaling: CGFloat
    
    var body: some View {
        HColorPlayButtonXWidth(backgroundColor: Constants.Colors.netflixRed, foregroundColor: .white, frameWidthScaling: frameWidthScaling, frameHeightScaling: frameHeightScaling)
    }
}

struct HWhitePlayButtonXWidth: View {
    var frameWidthScaling: CGFloat
    
    var body: some View {
        HButtonLabelWhiteXWidth(imageName: "play.fill", label: "Play", frameWidthScaling: frameWidthScaling)
    }
}

struct HWhiteMyListButtonXWidth: View {
    var frameWidthScaling: CGFloat
    
    var body: some View {
        HButtonLabelWhiteXWidth(imageName: "plus", label: "My List", frameWidthScaling: frameWidthScaling)
    }
}

struct HButtonLabelWhiteXWidth: View {
    var imageName: String
    var label: String
    var frameWidthScaling: CGFloat
    
    var body: some View {
        HStackButtonLabel(imageName: imageName, label: label, frameWidthScaling: frameWidthScaling)
    }
}

struct ViewTemplates_Previews: PreviewProvider {
    static var previews: some View {
        ViewTemplates()
    }
}
