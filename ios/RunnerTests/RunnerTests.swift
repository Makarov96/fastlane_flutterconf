import Flutter
import UIKit
import XCTest

class RunnerUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

      @MainActor
    func testTakeScreenshots() throws {
       let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        snapshot("01_SplashScreen")

        // Wait for an element instead of sleep
        let mainScreen = app.otherElements["main_screen"]
        XCTAssertTrue(mainScreen.waitForExistence(timeout: 10))

        snapshot("02_MainScreen")
    }
}
