//
//  ScaledFontModifier.swift
//  Polaris
//
//  Created by phjemi on 4/20/24.
//

import SwiftUI

struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var size: CGFloat
    var weight: Font.Weight = .regular
    func body(content: Content) -> some View {
        let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.system(size: scaledSize, weight: weight))
    }
}

extension View {
    func scaledFont(size: CGFloat, weight: Font.Weight = .regular) -> some View {
        return self.modifier(ScaledFont(size: size, weight: weight))
    }
}
