//
//  DirectoryUITests.swift
//  DirectoryUITests
//
//  Created by Michele Fadda on 11/12/2023.
//

import XCTest

final class DirectoryUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        continueAfterFailure = false
    }
    
    func testLoginFlow() {
            let app = XCUIApplication()
            app.launch()

            let usernameTextField = app.textFields["Username"]
            XCTAssertTrue(usernameTextField.exists)
            usernameTextField.tap()
            usernameTextField.typeText("admin")

            let passwordSecureTextField = app.secureTextFields["Password"]
            XCTAssertTrue(passwordSecureTextField.exists)
            passwordSecureTextField.tap()
            passwordSecureTextField.typeText("password")

            app.buttons["Login"].tap()

        
        
            let navigationViewExists = NSPredicate(format: "exists == 1")
            let navigation = app.navigationBars["Contacts"]
            expectation(for: navigationViewExists, evaluatedWith: navigation, handler: nil)

            waitForExpectations(timeout: 10, handler: nil)
        }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
