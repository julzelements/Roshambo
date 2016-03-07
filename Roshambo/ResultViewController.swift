//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Julian Scharf on 3/03/2016.
//  Copyright © 2016 Julian Scharf. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  var gameOutcome: RoshshamboBrain.gameOutcome?
  
  override func viewWillAppear(animated: Bool) {
    if let gameOutcome = self.gameOutcome {
        result.text = getGameOutcome(gameOutcome)
      }

    }
  

  @IBAction func playAgain(sender: AnyObject) {
  }
  
  @IBOutlet weak var result: UILabel!
  @IBOutlet weak var opponentThrow: UILabel!
  
  
  func getGameOutcome(gameOutcome: RoshshamboBrain.gameOutcome) -> String {
    switch gameOutcome {
    case RoshshamboBrain.gameOutcome.win: return "win"
    case RoshshamboBrain.gameOutcome.lose: return "lose"
    case RoshshamboBrain.gameOutcome.tie: return "tie"
    }
  }
}
