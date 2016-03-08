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
    if let yourHand = self.userThrow {
      youPlayedLabel.text = "You played \(newBrain!.getUserThrowToString(yourHand))"
    }
    if let computerHand = self.opponentThrow {
      computerPlayedLabel.text = "Computer played \(newBrain!.getUserThrowToString(computerHand))"
    }
    let battleOutcomeString = determineBattleOutcomeImage(userThrow!, p2: opponentThrow!, gameOutcome: gameOutcome!)
    battleOutcomeImage.image = UIImage(named: battleOutcomeString)
    
  }
  
  
  @IBAction func playAgain(sender: AnyObject) {
    //Nothing in here
    //This is just for the storyboard segue (Do not delete)
  }
  
  @IBOutlet weak var youPlayedLabel: UILabel!
  @IBOutlet weak var computerPlayedLabel: UILabel!
  @IBOutlet weak var winLoseLabel: UILabel!
  @IBOutlet weak var battleOutcomeImage: UIImageView!
  
  func determineBattleOutcomeImage(p1: RoshshamboBrain.gameThrow, p2: RoshshamboBrain.gameThrow, gameOutcome: RoshshamboBrain.gameOutcome) -> String {
    if gameOutcome == .tie {
      return "tie"
    } else if (p1 == .rock && p2 == .paper) || (p1 == .paper && p2 == .rock) {
      return "paperBeatsRock"
    } else if (p1 == .rock && p2 == .scissors) || (p1 == .scissors && p2 == .rock) {
      return "rockBeatsScissors"
    } else if (p1 == .scissors && p2 == .paper) || (p1 == .paper && p2 == .scissors) {
      return "scissorsBeatsPaper"
    }
    //This is here to keep the compiler happy
    //method must return default case 
    //I don't like this but I'm not sure how to clean it up.
      return "tie"
  }
  
}
