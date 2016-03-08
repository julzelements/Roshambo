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
  var newBrain: RoshshamboBrain?
  
  override func viewWillAppear(animated: Bool) {
    newBrain = RoshshamboBrain()
    if let gameOutcome = self.gameOutcome {
      winLoseLabel.text = "you \(newBrain!.getGameOutcomeToString(gameOutcome))"
    }
    
  }
  
  
  @IBAction func playAgain(sender: AnyObject) {
  }
  
  @IBOutlet weak var youPlayedLabel: UILabel!
  @IBOutlet weak var computerPlayedLabel: UILabel!
  @IBOutlet weak var winLoseLabel: UILabel!
  
  
  

}
