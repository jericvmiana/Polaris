//
//  MoreSettingsCell.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import SwiftUI


struct MoreSettingsCell: View {
    var item: ItemModel
    
    var body: some View {
        VStack(spacing: 0) {
            Divider()
            HStack {
                Text(item.title.rawValue)
                    .scaledFont(size: 17)
                    .padding(.leading, 4)
                Spacer()
                Image(systemName: item.imageName)
            }
            .padding(15)
        }
        .background(.white)
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.3)
            .ignoresSafeArea()
        MoreSettingsCell(item: Constants.More.settings[0])
    }
}
