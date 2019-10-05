import UIKit
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
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
    case rock, paper, scissors
    var description:String {
        switch self {
        case .rock:
            return "👊🏾"
        case .paper:
            return "✋🏿"
        case .scissors:
            return "✌🏽"
        }
    }
    func gettingGameState(opponentSign: Sign) -> GameState {
        if self == opponentSign {
            return .empate
        }
        switch self {
        case .rock:
            if opponentSign == .scissors {
                return .ganar
            } else if opponentSign == .paper {
                return .perder
            }
        case .paper:
            if opponentSign == .scissors {
                return .perder
            } else if opponentSign == .rock {
                return .ganar
            }
        case .scissors:
            if opponentSign == .paper {
                return .ganar
            } else if opponentSign == .rock {
                return .perder
            }
        }
        return .inicio
    }
}




