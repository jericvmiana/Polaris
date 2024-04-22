//
//  HomeView.swift
//  Polaris
//
//  Created by phjemi on 4/20/24.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.sizeCategory) var sizeCategory

    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
                .ignoresSafeArea()

            VStack(alignment: .leading) {
                
                HStack {
                    CustomButton(title: "Log In") {
                        // login
                    }
                    CustomButton(title: "Sign Up") {
                        // sign up
                    }
                }
                .padding(20)
                .foregroundStyle(.appBlue)
                .background(Color.white.shadow(color: .gray.opacity(0.3), radius: 2, y: 5))

                Text("Add a vehicle or connected device to your garage for vehicle info, maintenance reminders available remote features.")
                    .font(.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                    .padding(.horizontal)
                    .padding(.top, 4)
            
                AddVehicleView()
                    .foregroundStyle(.appBlue)
                    .frame(maxHeight: .infinity)
                
                RideInfoView()
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 0.75)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding([.bottom, .leading], 10)
                    .shadow(color: .gray, radius: 2, y: 2)
            }
        }
    }
}


#Preview {
    HomeView()
}
