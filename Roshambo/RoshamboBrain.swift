//
//  RoshamboBrain.swift
//  Roshambo
//
//  Created by Julian Scharf on 3/03/2016.
//  Copyright © 2016 Julian Scharf. All rights reserved.
//

import Foundation

class RoshshamboBrain {
  
  enum gameThrow {
    case rock
    case paper
    case scissors
  }
  
  enum gameOutcome {
    case win
    case lose
    case tie
  }
  
  func getRandomOpponentHand() -> gameThrow {
    let randomNumber = arc4random_uniform(3)
    switch randomNumber{
    case 0: return .rock
    case 1: return .paper
    case 2: return .scissors
    default: return .rock
    }
  }
  
  func duel(userThrow: gameThrow) -> (userOutcome: gameOutcome, opponentThrow: gameThrow) {
    let opponentThrow = getRandomOpponentHand()
    let userOutcome = determineMyGameOutcome(userThrow, opponentHand: opponentThrow)
    return (userOutcome, opponentThrow)
  }
  
  func determineMyGameOutcome(myHand: gameThrow, opponentHand: gameThrow) -> gameOutcome {
    switch myHand {
    case .paper:
      switch opponentHand {
      case .rock : return .win
      case .paper: return .tie
      case .scissors: return .lose
      }
    case .rock:
      switch opponentHand {
      case .rock : return .tie
      case .paper: return .lose
      case .scissors: return .win
      }
    case .scissors:
      switch opponentHand {
      case .rock : return .lose
      case .paper: return .win
      case .scissors: return .tie
      }
    }
  }
 
}