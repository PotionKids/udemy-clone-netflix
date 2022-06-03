//
//  FontView.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/2/22.
//

import SwiftUI

struct FontView: View {
    var body: some View {
        Text("TV-MA").font(Font.custom("Netflix Sans Bold", size: 16))
    }
}

struct FontView_Previews: PreviewProvider {
    static var previews: some View {
        FontView()
    }
}
