//
//  MockAPIServiceTests.swift
//  DirectoryTests
//
//  Created by Michele Fadda on 11/12/2023.
//

import XCTest
@testable import Directory

final class MockAPIServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFetchContacts() {
            let service = MockAPIService()
            let expectation = self.expectation(description: "Fetching contacts")

            service.fetchContacts { contacts in
                XCTAssertEqual(contacts.count, 4, "Expected 2 contacts")
                expectation.fulfill()
            }

            waitForExpectations(timeout: 5, handler: nil)
        }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
