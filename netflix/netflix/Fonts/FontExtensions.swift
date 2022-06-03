//
//  FontExtensions.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/2/22.
//

import Foundation
import SwiftUI

extension Font {
    enum FontWeight {
        case light
        case medium
        case bold
    }
    
    static func netflixSans(for weight: FontWeight, relativeTo style: Font.TextStyle, size: CGFloat) -> Font {
        switch weight {
        case .light: return Font.custom("Netflix Sans Light", size: size, relativeTo: style)
        case .medium: return Font.custom("Netflix Sans Medium", size: size, relativeTo: style)
        case .bold: return Font.custom("Netflix Sans Bold", size: size, relativeTo: style)
        }
    }
    
    static func netflixSansBoldBody(size: CGFloat) -> Font {
        netflixSans(for: .bold, relativeTo: .body, size: size)
    }
    
    static func netflixSansMediumBody(size: CGFloat) -> Font {
        netflixSans(for: .medium, relativeTo: .body, size: size)
    }
    
    static func netflixSansLightBody(size: CGFloat) -> Font {
        netflixSans(for: .light, relativeTo: .body, size: size)
    }
    
    static let netflixSansBoldBody12 = netflixSansBoldBody(size: 12)
    static let netflixSansMediumBody12 = netflixSansMediumBody(size: 12)
    static let netflixSansLightBody12 = netflixSansLightBody(size: 12)
    
    static let netflixSansBoldBody14 = netflixSansBoldBody(size: 14)
    static let netflixSansMediumBody14 = netflixSansMediumBody(size: 14)
    static let netflixSansLightBody14 = netflixSansLightBody(size: 14)
    
    static let netflixSansBoldBody16 = netflixSansBoldBody(size: 16)
    static let netflixSansMediumBody16 = netflixSansMediumBody(size: 16)
    static let netflixSansLightBody16 = netflixSansLightBody(size: 16)
}
