//
//  CommunityHeaderView.swift
//  Polaris
//
//  Created by phjemi on 4/22/24.
//

import SwiftUI

struct CommunityHeaderView: View {
    
    let segments = Constants.Community.categories
    @State private var selected = ItemTitle.activity
    @Namespace var name
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(segments) { segment in
                VStack {
                    
                    VStack {
                        CommunityCategoryCell(item: segment)
                        ZStack {
                            Capsule()
                                .fill(Color.clear)
                                .frame(height: 4)
                            if selected == segment.title {
                                Capsule()
                                    .fill(.white)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                    .onTapGesture {
                        withAnimation {
                            selected = segment.title
                            
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        CommunityHeaderView()
    }
}
