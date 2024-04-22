//
//  DataService.swift
//  Polaris
//
//  Created by phjemi on 4/21/24.
//

import Foundation
import Combine

typealias Params = [String: Any]

class DataService {
    
    func request<T: Decodable>(from endPoint: EndPointEnum, paramsData: Params? = nil) -> AnyPublisher<T, Error> {

        var request = URLRequest(url: endPoint.url)
        request.httpMethod = endPoint.httpMethod.rawValue
        
        if endPoint.isJSONEncoded {
            if let parameters = paramsData, let bodyData = try? JSONSerialization.data(withJSONObject: parameters, options: []) {
                request.httpBody = bodyData
            }
        } else {
            var urlComponents = URLComponents(url: endPoint.url, resolvingAgainstBaseURL: false)
            if let params = paramsData {
                urlComponents?.queryItems = params.map { URLQueryItem(name: $0.key, value: $0.value as? String) }
            }
            guard let url = urlComponents?.url else {
                return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
            }
            request.url = url
        }
        
        endPoint.headers?.forEach { key, value in
            request.setValue(value, forHTTPHeaderField: key)
        }
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { data, response in
                return data
            }
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

protocol Request {
    var url: URL { get }
    var httpMethod: HTTPMethod { get }
    var isJSONEncoded: Bool { get }
    var headers: [String: String]? { get }
}

enum EndPointEnum {
    case users
    case posts
    case create
}

extension EndPointEnum: Request {
    
    var headers: [String: String]? {
        switch self {
        case .users, .create:
            return ["Accept": "application/json"]
        case .posts:
            return ["Content-Type": "application/json"]
        }
    }
    
    var isJSONEncoded: Bool {
        switch self {
        case .users, .posts:
            return false
        case .create:
            return true
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .create:
            return .post
        case .users, .posts:
            return .get
        }
    }
    
    var url: URL {
        switch self {
        case .users:
            return APIFullURLs.users
        case .posts:
            return APIFullURLs.posts
        case .create:
            return APIFullURLs.posts
        }
    }
}

struct APIFullURLs {
    static let users = EndPoints(with: "/users").requestedURL
    static let posts = EndPoints(with: "/posts").requestedURL
}

class EndPoints {
    let baseURL = "https://jsonplaceholder.typicode.com"
    var requestedURL: URL
    
    required init(with URI: String) {
        
        let urlString = baseURL + URI
        guard let url = URL(string: urlString) else {
            fatalError("Invalid URL")
        }
        requestedURL =  url
    }
}

enum HTTPMethod: String {
    case get     = "GET"
    case post    = "POST"
    case put     = "PUT"
    case delete  = "DELETE"
}

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
    case noInternetConnection
}

enum HTTPHeaderField: String {
    case authentication = "Authentication"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
    case authorization = "Authorization"
    case acceptLanguage = "Accept-Language"
    case userAgent = "User-Agent"
    case json = "application/json"
}
