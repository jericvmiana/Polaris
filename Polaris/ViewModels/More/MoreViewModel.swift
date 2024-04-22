//
//  MoreViewModel.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import Foundation

class MoreViewModel: ObservableObject {
    
    func selectCategory(_ item: ItemModel) {
        switch item.title {
        case .groupRide:
            print("group ride")
        case .trackRide:
            print("track ride")
        case .garage:
            print("garage ride")
        case .dealers:
            print("dealers")
        default: return
        }
    }
    
    func selectSettings(_ item: ItemModel) {
        switch item.title {
        case .scheduleService:
            print("schedule service")
        case .help:
            print("help")
        case .shopping:
            print("shopping")
        case .polarisAdventures:
            print("polaris adventures")
        case .finance:
            print("finance")
        case .insurance:
            print("insurance")

        default: return
        }
    }
}
