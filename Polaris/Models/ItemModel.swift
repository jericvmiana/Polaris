//
//  ItemModel.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import Foundation

enum ItemTitle: String {
    case activity = "Activity"
    case explore = "Explore"
    case bookmarks = "Bookmarks"
    case newEvents = "New Events"
    case groupRide = "Group Ride"
    case trackRide = "Track Ride"
    case garage = "Garage"
    case dealers = "Dealers"
    case scheduleService = "Schedule Service"
    case help = "Help"
    case shopping = "Shopping"
    case polarisAdventures = "Polaris Adventures"
    case finance = "Finance"
    case insurance = "Insurance"
}

struct ItemModel: Identifiable {
    var id = UUID()
    let title: ItemTitle
    let imageName: String
}
