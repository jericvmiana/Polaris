//
//  CustomButton.swift
//  Polaris
//
//  Created by phjemi on 4/22/24.
//

import SwiftUI

struct CustomButton: View {
        var title: String
        var action: () -> Void
        var strokeColor: Color = .appBlue
        var hasStroke: Bool = true
        var background: Color? = nil
        var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.system(size: UIFontMetrics.default.scaledValue(for: 20), weight: .bold))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .overlay {
                        if hasStroke {
                            RoundedRectangle(cornerRadius: 2.0)
                                .stroke(.appBlue, lineWidth: 1.0)
                        }
                    }
            }
        }
}

#Preview {
    CustomButton(title: "Login", action: {})
}
