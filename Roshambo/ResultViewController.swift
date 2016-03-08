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
  var userThrow: RoshshamboBrain.gameThrow?
  var opponentThrow: RoshshamboBrain.gameThrow?
  
  override func viewWillAppear(animated: Bool) {
    if let gameOutcome = self.gameOutcome {
        winLoseLabel.text = "you \(getGameOutcome(gameOutcome))"
      }

    }
  

  @IBAction func playAgain(sender: AnyObject) {
  }
  
  @IBOutlet weak var youPlayedLabel: UILabel!
  @IBOutlet weak var computerPlayedLabel: UILabel!
  @IBOutlet weak var winLoseLabel: UILabel!

  
  
  func getGameOutcome(gameOutcome: RoshshamboBrain.gameOutcome) -> String {
    print (userThrow)
    switch gameOutcome {
    case RoshshamboBrain.gameOutcome.win: return "win"
    case RoshshamboBrain.gameOutcome.lose: return "lose"
    case RoshshamboBrain.gameOutcome.tie: return "tie"
      
    }
  }
}
