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
      switch gameOutcome {
      case RoshshamboBrain.gameOutcome.win: result.text = "win"
      case RoshshamboBrain.gameOutcome.lose: result.text = "lose"
      case RoshshamboBrain.gameOutcome.tie: result.text = "tie"
        
      }
    }
  }
  
  @IBOutlet weak var result: UILabel!
  @IBOutlet weak var opponentThrow: UILabel!
  
  
}
