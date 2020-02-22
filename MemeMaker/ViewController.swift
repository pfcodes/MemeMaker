//
//  ViewController.swift
//  MemeMaker
//
//  Created by Phil on 2/21/20.
//  Copyright © 2020 AURORA Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var topSegmentedControl: UISegmentedControl!
  @IBOutlet weak var topCaptionLabel: UILabel!
  @IBOutlet weak var bottomCaptionLabel: UILabel!
  @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
  
  let topChoices = [
    CaptionChoice(emoji: "🕶", caption: "You know what's cool?"),
    CaptionChoice(emoji: "💥", caption: "You know what makes me mad?"),
    CaptionChoice(emoji: "💕", caption: "You know what I love?")
  ]

  let bottomChoices = [
    CaptionChoice(emoji: "🐱", caption: "Cats wearing hats"),
    CaptionChoice(emoji: "🐕", caption: "Dogs carrying logs"),
    CaptionChoice(emoji: "🐒", caption: "Monkeys being funky")
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    prepareSegmentedControls()
    updateCaptionLabels()
  }
  
  func prepareSegmentedControls() {
    topSegmentedControl.removeAllSegments()
    for choice in topChoices {
      topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
    }
    topSegmentedControl.selectedSegmentIndex = 0
    
    bottomSegmentedControl.removeAllSegments()
    for choice in bottomChoices {
      bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
    }
    bottomSegmentedControl.selectedSegmentIndex = 0
  }
  
  func updateTopCaptionLabel() {
    topCaptionLabel.text = topChoices[topSegmentedControl.selectedSegmentIndex].caption
  }
  
  func updateBottomCaptionLabel() {
    bottomCaptionLabel.text = bottomChoices[bottomSegmentedControl.selectedSegmentIndex].caption
  }
  
  func updateCaptionLabels() {
    updateTopCaptionLabel()
    updateBottomCaptionLabel()
  }
  
  

  @IBAction func topSegmentedControlValueChanged(_ sender: UISegmentedControl) {
    updateTopCaptionLabel()
  }
  
  @IBAction func bottomSegmentedControlValueChanged(_ sender: UISegmentedControl) {
    updateBottomCaptionLabel()
  }
}

