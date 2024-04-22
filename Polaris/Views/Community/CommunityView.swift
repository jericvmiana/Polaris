//
//  CommunityView.swift
//  Polaris
//
//  Created by phjemi on 4/20/24.
//

import SwiftUI

struct CommunityView: View {
    
    @StateObject private var viewModel = CommunityViewModel()
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
            
            VStack(spacing: 0) {
                CommunityHeaderView()
                    .padding([.top, .horizontal])
                    .frame(maxWidth: .infinity)
                    .background(.black)
                
                if viewModel.isFetchingPosts {
                    ProgressView("Loading...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    ScrollView {
                        ForEach(viewModel.posts) { post in
                            CommunityPostCell(post: post)
                        }
                    }
                    .frame(maxHeight: .infinity)
                }
            }
        }
    }
}

#Preview {
    ZStack {
        CommunityView()
    }
    .ignoresSafeArea(edges: .bottom)
}
