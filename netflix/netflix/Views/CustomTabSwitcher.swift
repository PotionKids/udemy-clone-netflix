//
//  CustomTabSwitcher.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/4/22.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var movie: Movie
    @State private var currentTab: CustomTab = .episodes
    var tabs: [CustomTab] = [.episodes, .trailers, .more]
    
    func widthOfTab(_ tab: CustomTab) -> CGFloat {
        tab.rawValue.widthOfString(usingFont: .boldSystemFont(ofSize: 16))
    }
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthOfTab(tab), height: 6)
                                .foregroundColor((tab == currentTab) ? .red : .clear)
                            
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.netflixSansBoldBody16)
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            switch currentTab {
            case .episodes:
                Text("Episodes")
            case .trailers:
                Text("Trailers & More")
            case .more:
                MoreLikeThisView(movie: movie)
            }
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            CustomTabSwitcher(movie: theLastKingdom)
        }
    }
}
