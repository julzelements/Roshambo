//
//  FightViewController.swift
//  Roshambo
//
//  Created by Julian Scharf on 3/03/2016.
//  Copyright © 2016 Julian Scharf. All rights reserved.
//

import UIKit

class FightViewController: UIViewController {
  
  var brain: RoshshamboBrain!
  
  override func viewDidLoad() {
    brain = RoshshamboBrain()
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "paperSegue" {
      let outcome = brain.duel(.paper)
      let controller = segue.destinationViewController as! ResultViewController
      controller.gameOutcome = outcome.userOutcome
      controller.userThrow = .paper
      controller.opponentThrow = outcome.opponentThrow
      
    } else if segue.identifier == "scissorsSegue" {
      let outcome = brain.duel(.scissors)
      let controller = segue.destinationViewController as! ResultViewController
      controller.gameOutcome = outcome.userOutcome
      controller.userThrow = .scissors
      controller.opponentThrow = outcome.opponentThrow
    }
  }
  
  
  @IBAction func userPickedRock(sender: UIButton) {
 userThrowsHand(RoshshamboBrain.gameThrow.rock)
  }

  @IBAction func userThrewPaper(sender: UIButton) {
    performSegueWithIdentifier("paperSegue", sender: self)
//     userThrowsHand(RoshshamboBrain.gameThrow.paper)
  }
  
  func userThrowsHand(hand: RoshshamboBrain.gameThrow) {
       if let brain = brain {
      let outcome = brain.duel(hand)
      var controller: ResultViewController
      controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
      controller.gameOutcome = outcome.userOutcome
      controller.userThrow = hand
      controller.opponentThrow = outcome.opponentThrow
      
      self.presentViewController(controller, animated: true, completion: nil)
    }
  }

}
