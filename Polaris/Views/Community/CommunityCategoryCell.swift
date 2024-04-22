//
//  CommunityCategoryCell.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import SwiftUI

struct CommunityCategoryCell: View {
    
    var item: ItemModel

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: item.imageName)
            Text(item.title.rawValue)
                .scaledFont(size: 14.0)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        CommunityCategoryCell(item: Constants.Community.categories[0])
    }
}
