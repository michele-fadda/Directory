//
//  DirectoryTests.swift
//  DirectoryTests
//
//  Created by Michele Fadda on 11/12/2023.
//

import XCTest
@testable import Directory

final class DirectoryTests: XCTestCase {
    var viewModel: AuthViewModel!
    
    override func setUpWithError() throws {
        viewModel = AuthViewModel()
    }

    func testAuthentication() {
            // Assuming you have a method like this
            viewModel.authenticate(username: "admin", password: "password")
            XCTAssertTrue(viewModel.isAuthenticated, "Authentication failed for valid credentials")
    }
    
    func testAuthenticationMustFail() {
            viewModel.authenticate(username: "mike", password: "123")
            XCTAssertFalse(viewModel.isAuthenticated, "Authentication successsful for invalid credentials")
    }
    
    override func tearDownWithError() throws {
        viewModel = nil
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
