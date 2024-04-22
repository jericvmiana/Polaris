//
//  PostModel.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import Foundation

struct PostModel: Codable, Identifiable {
    let id: Int?
    let title: String?
    let body: String?
    
    var getImage: String {
        MockData.images.randomElement()!
    }
    
    var getLikesCount: Int {
        Int.random(in: 1...100)
    }
}

