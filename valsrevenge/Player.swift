//
//  Player.swift
//  valsrevenge
//
//  Created by Anton Ustyuzhanin on 22.06.2023.
//

import Foundation
import SpriteKit

enum Direction: String {
    case stop
    case left
    case right
    case up
    case down
}

class Player: SKSpriteNode {
    
    func move(_ direction: Direction) {
        print("move player: \(direction.rawValue)")
        switch direction {
        case .up:
            self.physicsBody?.velocity = CGVector(dx: 0, dy: 100)
            //self.physicsBody?.applyImpulse(CGVector(dx: 0, dy: 100))
            //self.physicsBody?.applyForce(CGVector(dx: 0, dy: 100))
        case .down:
            self.physicsBody?.velocity = CGVector(dx: 0, dy: -100)
        case .left:
            self.physicsBody?.velocity = CGVector(dx: -100, dy: 0)
        case .right:
            self.physicsBody?.velocity = CGVector(dx: 100, dy: 0)
        case .stop:
            stop()
        }
    }
    
    func stop() {
        self.physicsBody?.velocity = CGVector(dx: 0, dy: 0)
    }
}
