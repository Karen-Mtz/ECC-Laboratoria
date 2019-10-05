//
//  ViewController.swift
//  learningXcode
//
//  Created by Apple Device 18 on 10/5/19.
//  Copyright © 2019 Tonipocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rock(_ sender: UIButton) {
       let computerCoice = randomSign()
        let userChoice = Sign.rock
        let result = userChoice.gettingGameState(opponentSign: computerCoice)
        determineAppState(result: result)
    }
    
    func determineAppState(result: GameState) {
        switch result {
        case .ganar:
        view.backgroundColor = .green
        case .perder:
            view.backgroundColor = .red
        default:
            view.backgroundColor = .yellow
        }
    }
    
    @IBAction func paper(_ sender: UIButton) {
        let computerChoice = randomSign()
        let userChoie = Sign.paper
        let result = userChoie.gettingGameState(opponentSign: computerChoice)
        determineAppState(result: result)
    }
    
    @IBAction func scissors(_ sender: UIButton) {
        let computerChoice = randomSign()
        let userChoice = Sign.scissors
        let result = userChoice.gettingGameState(opponentSign: computerChoice)
    determineAppState(result: result)
    }
    
}

