//
//  HStackButton.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI

struct HStackButtonLabel: View {
    var imageName = "play.fill"
    var label = "Play"
    var backgroundColor = Color.white
    var foregroundColor = Color.black
    var frameWidthScaling = 2.8
    var frameHeightScaling = 23.0
    var cornerRadiusScaling = 15.0
    var spacerScaling = 20.0
    
    private func width() -> CGFloat {
        screenWidth / frameWidthScaling
    }
    private func height() -> CGFloat {
        screenHeight / frameHeightScaling
    }
    private func cornerRadius() -> CGFloat {
        min(height(), width()) / cornerRadiusScaling
    }
    
    var spacer: some View {
        Spacer(minLength: screenWidth / spacerScaling)
    }
    var image: some View {
        Image(systemName: imageName)
            .font(.title2)
    }
    var text: some View {
        Text(" \(label)")
            .font(.netflixSans(for: .medium, relativeTo: .title3, size: 18))
    }
    
    
    
    var body: some View {
            HStack {
                spacer
                image
                text
                spacer
            }
            .frame(width: width(), height: height())
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(cornerRadius())
            .shadow(color: .black, radius: 1, x: 1, y: 1)
        }
}

struct HStackButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue
            Button {
                //
            } label: {
                HStackButtonLabel()
            }

        }
    }
}
