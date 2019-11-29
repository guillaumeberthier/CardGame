import XCTest
@testable import CardGame

final class CardGameTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CardGame().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
