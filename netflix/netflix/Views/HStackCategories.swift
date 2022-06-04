//
//  HStackCategories.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/1/22.
//

import SwiftUI

struct HStackCategories: View {
    var categories: [Category]
    var delimiter: String?
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { category in
                HStack {
                    Text(category).font(.netflixSansLightBody(size: 16))
                    if category != categories.last {
                        Image(systemName: delimiter ?? "")
                            .foregroundColor(.blue)
                            .font(.system(size: 4))
                    }
                }
            }
        }
    }
}

struct HStackCategories_Previews: PreviewProvider {
    static var previews: some View {
        HStackCategories(categories: Constants.categories, delimiter: "circle.fill")
    }
}
