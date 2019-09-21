
enum GameState {
    case inicio, ganar, perder, empate
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

let opponentSign = Sign.scissors
let user = Sign.rock

print(user.gettingGameState(opponentSign: opponentSign))

