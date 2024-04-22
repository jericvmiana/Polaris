//
//  RideInfoView.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import SwiftUI

struct RideInfoView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "digitalcrown.arrow.clockwise.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 30)
                    .foregroundStyle(.appBlue)
                HStack(spacing: 0) {
                    Text("0")
                        .scaledFont(size: 45)
                        .fontWeight(.semibold)
                    Text(" RIDES")
                        .scaledFont(size: 14)
                        .offset(y: 6)
                }
            }
            
            Spacer().frame(height: 20)
            
            Divider()
            
            Spacer().frame(height: 20)

            HStack(spacing: 20) {
                VStack {
                    HStack(spacing: 0) {
                        Text("0.0")
                            .scaledFont(size: 24)
                            .fontWeight(.semibold)
                        Text(" mi")
                            .offset(y: 2)
                            .scaledFont(size: 12)

                    }
                    Text("TRACKED")
                }
                Spacer()
                VStack {
                    HStack(spacing: 0) {
                        Text("0.0")
                            .scaledFont(size: 24)
                            .fontWeight(.semibold)
                        Text(" hr")
                            .offset(y: 2)
                            .scaledFont(size: 12)
                    }
                    Text("RIDE TIME")
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.1)
            .ignoresSafeArea()
        RideInfoView()
    }
}
