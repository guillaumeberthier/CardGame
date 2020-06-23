//
//  Card.swift
// 
//
//  Created by Guillaume Berthier on 29/11/2019.
//

import Foundation

public struct Card: Hashable {

    public enum Value: Int, CaseIterable {
        case ace = 1, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    }

    public enum Color: CaseIterable {
        case heart, diamond, club, spade
    }

    public let value: Value
    public let color: Color
}
