//
//  Sign.swift
//  RPS
//
//  Created by Vadym Horovyi on 12/05/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import Foundation
import GameplayKit

                // give a random Int between the tow values specified in the initializer
let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

// gets a random number, then uses it to create a new Sign instance
func randomSighn() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, scissors, paper
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊🏻"
        case .scissors:
            return "✌🏻"
        case .paper:
            return "✋🏻"
        }
    }
    
    func throwThree(_ rival: Sign) -> GameState {
        switch (self, rival) {
        case (.rock, .rock),
             (.paper, .paper),
             (.scissors, .scissors):
            return .draw
        case (.rock, .scissors),
             (.paper, .rock),
             (.scissors, .paper):
            return .win
        default:
            return .lose
        }
    }
}
