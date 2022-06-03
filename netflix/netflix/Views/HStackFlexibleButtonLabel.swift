//
//  HStackFlexibleButtonLabel.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/3/22.
//

import SwiftUI

struct HStackFlexibleButtonLabel: View {
    var frameHeightScaling = 23.0
    var backgroundColor = Color.white
    var foregroundColor = Color.black
    var imageName = "play.fill"
    var label = "Play"
    var cornerRadiusScaling = 15.0
    var spacerScaling = 20.0
    
    var body: some View {
            HStack {
                spacer
                image
                text
                spacer
            }
            .frame(height: height())
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(cornerRadius())
            .shadow(color: .black, radius: 1, x: 1, y: 1)
        }
    
    private func height() -> CGFloat {
        screenHeight / frameHeightScaling
    }
    private func cornerRadius() -> CGFloat {
        height() / cornerRadiusScaling
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
}

struct HStackFlexibleButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        HStackFlexibleButtonLabel()
    }
}
