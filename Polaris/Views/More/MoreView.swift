//
//  MoreView.swift
//  Polaris
//
//  Created by phjemi on 4/20/24.
//

import SwiftUI

struct MoreView: View {
    
    @StateObject private var viewModel = MoreViewModel()

    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
            
            ScrollView {
                
                categoriesView
                    .padding(10)
                
                settingsView
            }
        }
    }
}

extension MoreView {
    private var categoriesView: some View {
        LazyVGrid(columns: Array(repeating: GridItem(), count: 2),
                  spacing: 10) {
            ForEach(Constants.More.categories) { item in
                MoreCategoryCell(item: item)
                    .shadow(color: .appBlue.opacity(0.3), radius: 3)
                    .onTapGesture {
                        withAnimation {
                            viewModel.selectCategory(item)

                        }
                    }

            }
        }
    }
    
    private var settingsView: some View {
        VStack(spacing:0) {
            ForEach(Constants.More.settings) { item in
                MoreSettingsCell(item: item)
                    .onTapGesture {
                        viewModel.selectSettings(item)
                    }
            }
            Divider()
        }
    }
}

#Preview {
    MoreView()
}
