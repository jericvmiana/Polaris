//
//  CommunityPostCell.swift
//  Polaris
//
//  Created by phjemi on 4/22/24.
//

import SwiftUI

struct CommunityPostCell: View {
    
    var post: PostModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Divider()
            header
                .padding()
            Divider()

            postImage
                
            Divider()

            details
                .padding()
            Divider()

        }
        .background(.white)
    }
}

extension CommunityPostCell {
    private var header: some View {
        HStack {
            Image(systemName: "location.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 32)
            VStack(alignment: .leading) {
                Text("Polaris\(post.title ?? "")")
                    .scaledFont(size: 18)
                Text("1 week ago")
                    .scaledFont(size: 18)
                    .foregroundStyle(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 4)
            Image(systemName: "hand.thumbsup")
                .resizable()
                .scaledToFit()
                .frame(height: 20)
            Text("\(post.getLikesCount)")
        }
    }
    
    private var postImage: some View {
        Image(post.getImage)
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)

            .scaledToFill()
    }
    
    private var details: some View {
        VStack(spacing: 5) {
            Text(post.body ?? "")
                .scaledFont(size: 18, weight: .semibold)
            
                .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
                .padding(.bottom, 3)
            HStack {
                Image(systemName: "mappin.and.ellipse.circle")
                Text("5,116 mi")
                Spacer().frame(width: 20)
                Image(systemName: "clock")
                Text("1 hr 56 min")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: UIScreen.main.bounds.width, alignment: .leading)
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.1)
            .ignoresSafeArea()

        CommunityPostCell(post: MockData.post)
    }
}
