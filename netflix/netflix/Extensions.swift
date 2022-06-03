//
//  Extensions.swift
//  netflix
//
//  Created by Krishnaswami Rajendren on 6/4/22.
//

import Foundation
import SwiftUI

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: fontAttributes).width
    }
}
