//
//  ApiCaller.swift
//  Netflix Clone
//
//  Created by Jonás Morales on 10/21/23.
//

import Foundation

struct Constats {
    static let API_KEY = "60a9665831f720ba042b9fac1661f019"
    static let API_BASE_URL = "https://api.themoviedb.org/3"
}

enum APIError: Error {
    case failedToGetData
}

class ApiCaller {
    static let shared = ApiCaller()
    func getTNowPlayingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        guard let url = URL(string: "\(Constats.API_BASE_URL)/movie/now_playing?api_key=\(Constats.API_KEY)") else{return}
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)) {
            data, _, error in guard let data = data, error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(MovieResponse.self, from: data)
                completion(.success(results.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
