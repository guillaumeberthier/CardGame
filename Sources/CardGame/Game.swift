//
//  Game.swift
// 
//
//  Created by Guillaume Berthier on 30/11/2019.
//

import Foundation

public protocol GameDelegate: class {
    func round(for game: Game) -> Round?
}

public struct Game {
    public let name: String
    public let delegate: GameDelegate

    public init(name: String, delegate: GameDelegate) {
        self.name = name
        self.delegate = delegate
    }

    public func execute() {
        while let nextRound = delegate.round(for: self) {
            nextRound.execute()
        }
    }
}
