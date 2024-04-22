//
//  CommunityViewModel.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import Foundation
import Combine

class CommunityViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    @Published var isFetchingPosts: Bool = false
    
    private let dataService = DataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        isFetchingPosts = true
        dataService.request(from: .posts)
            .sink { [weak self] completion in
                switch completion {
                case .failure(let error):
                    print("Error fetching posts: \(error)")
                    self?.isFetchingPosts = false
                default:
                    self?.isFetchingPosts = false
                }
            } receiveValue: { [weak self] (posts: [PostModel]) in
                self?.posts = posts
            }.store(in: &cancellables)
    }
}
