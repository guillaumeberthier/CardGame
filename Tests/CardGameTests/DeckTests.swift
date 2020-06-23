//
//  DeckTests.swift
//  
//
//  Created by Guillaume Berthier on 29/11/2019.
//

import XCTest
@testable import CardGame

final class DeckTests: XCTestCase {
    func testInitFiftyTwoDeck() {
        let deck = Deck(kind: .fiftyTwo)
        XCTAssertEqual(deck.count, 52)
    }

    func testPopLast() {
        let deck = Deck(kind: .fiftyTwo)
        let lastCard = deck.popLast()
        XCTAssertNotNil(lastCard)
        let expected = Card(value: .king, color: .heart)
        XCTAssertEqual(lastCard!, expected)
    }

    func testEmptyFiftyTwoDeck() {
        let deck = Deck(kind: .fiftyTwo)
        for _ in 0..<52 {
            let current = deck.popLast()
            XCTAssertNotNil(current)
        }
        XCTAssertEqual(deck.count, 0)
        let nilCard = deck.popLast()
        XCTAssertNil(nilCard)
    }

    static var allTests = [
        ("testInitFiftyTwoDeck", testInitFiftyTwoDeck),
        ("testPopLast", testPopLast),
        ("testEmptyFiftyTwoDeck", testEmptyFiftyTwoDeck),
    ]
}
