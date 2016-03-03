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
  
  @IBAction func userPickedRock(sender: UIButton) {
    if let brain = brain {
      let outcome = brain.duel(RoshshamboBrain.gameThrow.rock)
      var controller: ResultViewController
      controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
      controller.gameOutcome = outcome.userOutcome
      
      
      self.presentViewController(controller, animated: true, completion: nil)
    }
  }

  @IBAction func userThrewPaper(sender: UIButton) {
    
  }
  
  @IBAction func userThrewScissors(sender: UIButton) {
    
  }
}
