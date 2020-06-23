//
//  Player.swift
// 
//
//  Created by Guillaume Berthier on 29/11/2019.
//

import Foundation

public protocol Player {
    var name: String { get }
    var hand: Hand { get set }
    var actionsHistory: [PlayerAction] { get set }

    func play(action: PlayerAction)
}
