//
//  MapView.swift
//  Polaris
//
//  Created by phjemi on 4/20/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 14.5995, longitude: 120.9842),
        span: MKCoordinateSpan(latitudeDelta: 3.0, longitudeDelta: 3.0)
       )
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Map(coordinateRegion: $region)
                mapButtons
                    .padding([.horizontal, .bottom])
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.black, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)

            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    .foregroundStyle(.white)
                }
            }
        }
       
    }
}

extension MapView {
    private var mapButtons: some View {
        HStack {
            Button  {
            } label: {
                ZStack {
                    Circle()
                        .frame(height: 40)
                        .foregroundStyle(.white)
                        .overlay {
                            Circle().stroke(.appBlue, lineWidth: 1.0)
                        }
                    Image(systemName: "mappin")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundColor(.appBlue)
                }
            }
            Spacer()
            
            Button {
            } label: {
                HStack {
                    Image(systemName: "books.vertical")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                    
                     
                    Text("Tools")
                }
                .padding(.horizontal, 20)
                .frame(height: 40)
                .background(Color.white)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .stroke(.appBlue, lineWidth: 1)

                )
                .foregroundColor(.appBlue)
            }
        }
    }
}

#Preview {
    MapView()
}
