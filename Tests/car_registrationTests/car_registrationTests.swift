import XCTest
@testable import car_registration

class car_registrationTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(car_registration().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
