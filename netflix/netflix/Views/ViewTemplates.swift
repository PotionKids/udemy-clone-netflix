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
                    whitePlayButtonHalfWidth
                    whiteMyListButtonHalfWidthUnselected
                }
                HStack {
                    whitePlayButtonThirdWidth
                    whitePlayButtonThirdWidth
                    whitePlayButtonThirdWidth
                }
                HStack {
                    whitePlayButtonFullWidth
                }
            }
        }
    }
    
    var whitePlayButtonFullWidth: some View {
        HWhitePlayButtonXWidth(frameWidthScaling: 1)
    }
    
    var whitePlayButtonHalfWidth: some View {
        HWhitePlayButtonXWidth(frameWidthScaling: 2)
    }
    
    var whitePlayButtonThirdWidth: some View {
        HWhitePlayButtonXWidth(frameWidthScaling: 3.2)
    }
    
    var whiteMyListButtonHalfWidthSelected: some View {
        HWhiteMyListButtonXWidth(frameWidthScaling: 2.1)
    }
    
    var whiteMyListButtonHalfWidthUnselected: some View {
        HButtonLabelWhiteXWidth(imageName: "plus", label: "My List", frameWidthScaling: 2.1)
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
