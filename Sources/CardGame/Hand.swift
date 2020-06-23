//
//  Hand.swift
// 
//
//  Created by Guillaume Berthier on 29/11/2019.
//

import Foundation

public protocol Hand {
    var cards: [Card] { get }
    func addCard(_ card: Card)
    func addCards(_ cards: [Card])
    func removeCard(_ card: Card)
}
