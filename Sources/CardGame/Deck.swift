//
//  Deck.swift
// 
//
//  Created by Guillaume Berthier on 29/11/2019.
//

import Foundation

public class Deck {

    public enum Kind {
        case fiftyTwo
    }

    private var cards: [Card] = []

    var count: Int {
        return cards.count
    }

    public init(kind: Kind) {
        switch kind {
        case .fiftyTwo:
            self.cards = getShuffledFiftyTwoCards()
        }
    }

    public func shuffle() {
        cards = cards.shuffled()
    }

    public func popLast() -> Card? {
        return cards.popLast()
    }

    // MARK: - Private

    private func getShuffledFiftyTwoCards() -> [Card] {
        let allCardsColor: [Card.Color] = [.club, .spade, .diamond, .heart]
        return (1...13).map { value -> [Card] in
            return allCardsColor.compactMap { color -> Card? in
                guard let cardValue = Card.Value(rawValue: value) else { return nil}
                return Card(value: cardValue, color: color)
            }
        }
        .flatMap { $0 }
        .shuffled()
    }
}
