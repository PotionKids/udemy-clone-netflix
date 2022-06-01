//
//  SmallVerticalButton.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI

struct SmallVerticalButton: View {
    var description: String
    var isOnImageName: String
    var isOffImageName: String
    
    var isOn: Bool
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: isOn ? isOnImageName : isOffImageName).font(.title2)
                    .padding(.vertical, 0.4)
                Text(description).font(.system(size: 14))
            }
            .foregroundColor(.white)
        }

    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            SmallVerticalButton (
                description: "My List",
                isOnImageName: "checkmark",
                isOffImageName: "plus",
                isOn: true) {
                    print("tapped")
                }
        }
    }
}
