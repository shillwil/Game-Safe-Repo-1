//
//  GameViewController.swift
//  The Game Safe
//
//  Created by Alex Shillingford on 11/18/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

@IBDesignable class GameViewController: UIViewController {
    
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var difficultySegmentedControl: UISegmentedControl!
    @IBOutlet weak var gameButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
