//
//  Stage.swift
// 
//
//  Created by Guillaume Berthier on 30/11/2019.
//

import Foundation

public enum ResolutionResult {
    case authorized
    case unauthorized
}

public protocol Stage {
    var name: String { get }

    func execute()
    func player(for stage: Stage) -> Player?
    func playerAction(from stage: Stage, player: Player) -> PlayerAction?
    func resolve(_ action: PlayerAction, from player: Player, in stage: Stage) -> ResolutionResult
}

extension Stage {
    public func execute() {
        while let player = player(for: self) {
            let _ = getValidResolution(player: player)
        }
    }

    // MARK: - Private

    private func getValidResolution(player: Player) -> ResolutionResult {
        let action = getValidAction(from: player)
        let result = resolve(action, from: player, in: self)
        guard result == .authorized else {
            return getValidResolution(player: player)
        }
        return result
    }

    private func getValidAction(from player: Player) -> PlayerAction {
        guard let action = playerAction(from: self, player: player) else {
            return getValidAction(from: player)
        }
        return action
    }
}
