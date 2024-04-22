//
//  RidesView.swift
//  Polaris
//
//  Created by phjemi on 4/20/24.
//

import SwiftUI

struct RidesView: View {
    var body: some View {
        ZStack {
            
            Color.gray.opacity(0.1).ignoresSafeArea()
            
            VStack(spacing: 0) {
                Image(.rides)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                
                Text("Log in or sign up for free account to plan routes, track rides, and add waypoints to your map.")
                    .scaledFont(size: 18)
                    .padding(.horizontal)
                    .padding(.top, 10)
                    .multilineTextAlignment(.center)
                
                
                actionButtonsView
                    .padding()
                
            }
        }
    }
    
    struct ActionButton: View {
        var title: String
        var action: () -> Void
        var body: some View {
            Button {
                
            } label: {
                Text(title)
                    .scaledFont(size: 18, weight: .bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.appBlue)
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))
            }
        }
    }
}

extension RidesView {
    private var actionButtonsView: some View {
        HStack {
            ActionButton(title: "Log In") {
                // login
            }
            
            ActionButton(title: "Sign Up") {
                // sign up
            }
        }
    }
}


#Preview {
    ZStack {
        RidesView()
    }
    .ignoresSafeArea(edges: .top)
}
