//
//  Constants.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import Foundation

struct Constants {
    struct Community {
        static let categories: [ItemModel] = [
            ItemModel(title: ItemTitle.activity, imageName: "character.book.closed.fill"),
            ItemModel(title: ItemTitle.explore, imageName: "rectangle.and.text.magnifyingglass"),
            ItemModel(title: ItemTitle.bookmarks, imageName: "bookmark"),
            ItemModel(title: ItemTitle.newEvents, imageName: "ev.plug.ac.type.1"),
        ]
    }
    
    struct More {
        static let categories: [ItemModel] = [
            ItemModel(title: ItemTitle.groupRide, imageName: "person.3.fill"),
            ItemModel(title: ItemTitle.trackRide, imageName: "arrow.up.and.down.and.sparkles"),
            ItemModel(title: ItemTitle.garage, imageName: "door.garage.open"),
            ItemModel(title: ItemTitle.dealers, imageName: "gym.bag.fill"),
        ]
        
        static let settings: [ItemModel] = [
            ItemModel(title: ItemTitle.scheduleService, imageName: "rectangle.portrait.and.arrow.forward"),
            ItemModel(title: ItemTitle.help, imageName: "rectangle.portrait.and.arrow.forward"),
            ItemModel(title: ItemTitle.shopping, imageName: "rectangle.portrait.and.arrow.forward"),
            ItemModel(title: ItemTitle.polarisAdventures, imageName: "rectangle.portrait.and.arrow.forward"),
            ItemModel(title: ItemTitle.finance, imageName: "rectangle.portrait.and.arrow.forward"),
            ItemModel(title: ItemTitle.insurance, imageName: "rectangle.portrait.and.arrow.forward"),
        ]
    }
}

struct MockData {
    static let post = PostModel(id: 1, title: "Post Title", body: "Post Body")
    static let images = ["image-1", "image-2", "image-3", "image-4", "image-5", "image-6", "image-7", "image-8"]
}
