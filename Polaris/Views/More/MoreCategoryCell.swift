//
//  MoreCategoryCell.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import SwiftUI

struct MoreCategoryCell: View {
    var item: ItemModel
    
    var body: some View {
        VStack {
            Image(systemName: item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 25)
            
            Spacer().frame(height: 10)
            
            Text(item.title.rawValue)
                .scaledFont(size: 18, weight: .semibold)
        }
        .foregroundStyle(.appBlue)
        .padding()
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.3)
            .ignoresSafeArea()
        MoreCategoryCell(item: Constants.More.categories[0])

    }
}
