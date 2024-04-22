//
//  AddVehicleView.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import SwiftUI

struct AddVehicleView: View {
    var body: some View {
        ZStack {
            Image(.vehicle)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: .infinity)
                .opacity(0.3)
            VStack {
                Button {
                    
                } label: {
                    ZStack {
                        Circle()
                            .foregroundStyle(.white)
                            .overlay {
                                Circle()
                                    .stroke(.appBlue, lineWidth: 2.0)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            }
                        Image(systemName: "plus")
                            .resizable()
                            .frame(maxHeight: .infinity)
                            .padding()
                    }
                }
                .frame(width: 70, height: 70)

                Text("Add a Vehicle or\nConnected Device")
                    .font(.system(size: UIFontMetrics.default.scaledValue(for: 25), weight: .heavy))
                    .lineSpacing(2)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.appBlue)
                    .bold()
            }
        }
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.1)
            .ignoresSafeArea()
        AddVehicleView()
    }
    
}
