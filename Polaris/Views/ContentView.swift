//
//  ContentView.swift
//  Polaris
//
//  Created by phjemi on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            tabView
        }
    }
    
    init() {
        UITabBar.appearance().backgroundColor = .white
        UINavigationBar.appearance().backgroundColor = .black
    }
}

extension ContentView {
    private var tabView: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "car.rear.and.tire.marks")
                        Text("Home")
                    }
                }
            
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "map.fill")
                        Text("Map")
                    }
                }
            
            RidesView()
                .tabItem {
                    VStack {
                        Image(systemName: "arrow.triangle.swap")
                        Text("Rides")
                    }
                }
            
            CommunityView()
                .tabItem {
                    VStack {
                        Image(systemName: "hand.thumbsup.fill")
                        Text("Community")
                    }
                }
            MoreView()
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis")
                        Text("More")
                    }
                }
                .badge(7)
            
        }
        .tint(.appBlue)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color.black, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Button {
                } label: {
                    Image(systemName: "line.3.horizontal")
                }
                .foregroundStyle(.white)
            }
            
            ToolbarItemGroup(placement: .principal) {
                Image(.polaris)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
            }
        }
    }
}

#Preview {
    ContentView()
}
