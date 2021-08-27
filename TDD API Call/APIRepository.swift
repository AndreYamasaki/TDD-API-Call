//
//  APIRepository.swift
//  TDD API Call
//
//  Created by user on 27/08/21.
//

import Foundation

class Movie: Codable {
  let title: String
  let detail: String
}

class APIRepository {
    
    var session: URLSession!
    
    func getMovies(completion: @escaping ([Movie]?, Error?) -> Void) {
      guard let url = URL(string: "https://mymovieslist.com/topmovies")
      else { fatalError() }
      session.dataTask(with: url) { (_, _, _) in }
    }
}

class MockURLSession: URLSession {
  var cachedUrl: URL?
  override func dataTask(with url: URL, completionHandler:      @escaping(Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
    self.cachedUrl = url
    return URLSessionDataTask()
  }
}
