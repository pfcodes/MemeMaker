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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func topSegmentedControlValueChanged(_ sender: Any) {
  }
  
  @IBAction func bottomSegmentedControlValueChanged(_ sender: Any) {
  }
}

