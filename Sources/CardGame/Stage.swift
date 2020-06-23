//
//  Stage.swift
// 
//
//  Created by Guillaume Berthier on 30/11/2019.
//

import Foundation

public protocol Stage {
    var name: String { get }

    func execute()
    func player(for stage: Stage) -> Player?
    func playerAction(from stage: Stage, player: Player) -> PlayerAction?
    func resolve(_ action: PlayerAction,from player: Player, in stage: Stage)
}

extension Stage {
    public func execute() {
        while let player = player(for: self) {
            guard let action = playerAction(from: self, player: player) else { continue }
            resolve(action, from: player, in: self)
        }
    }
}
