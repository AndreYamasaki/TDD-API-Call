//
//  TDD_API_CallTests.swift
//  TDD API CallTests
//
//  Created by user on 27/08/21.
//

@testable import TDD_API_Call
import XCTest

class TDD_API_CallTests: XCTestCase {
    
    func testGetMoviesWithExpectedURLHostAndPath() {
      let apiRespository = APIRepository()
      let mockURLSession  = MockURLSession()
      apiRespository.session = mockURLSession
      apiRespository.getMovies() { movies, error in }
      XCTAssertEqual(mockURLSession.cachedUrl?.host, "mymovieslist.com")
      XCTAssertEqual(mockURLSession.cachedUrl?.path, "/topmovies")
    }
    
}
