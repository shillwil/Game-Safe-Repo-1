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

        updateViews()
    }
    
    @IBAction func gameButtonPressed(_ sender: UIButton) {
    }
    
    
    func updateViews() {
        gameButton.layer.cornerRadius = 170
        gameButton.layer.borderColor = UIColor.black.cgColor
        gameButton.layer.borderWidth = 2.0
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
