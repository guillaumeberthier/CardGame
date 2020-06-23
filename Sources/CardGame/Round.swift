//
//  Round.swift
// 
//
//  Created by Guillaume Berthier on 30/11/2019.
//

import Foundation

public protocol Round {
    var name: String { get }

    func execute()
    func stage(for round: Round) -> Stage?
}

extension Round {
    public func execute() {
        while let nextStage = stage(for: self) {
            nextStage.execute()
        }
    }
}
