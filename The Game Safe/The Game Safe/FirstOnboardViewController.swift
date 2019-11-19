//
//  FirstOnboardViewController.swift
//  The Game Safe
//
//  Created by Alex Shillingford on 11/18/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class FirstOnboardViewController: UIViewController {

    @IBOutlet weak var welcomeStackView: UIStackView!
    @IBOutlet weak var topTextView: UITextView!
    @IBOutlet weak var middleTextView: UITextView!
    @IBOutlet weak var bottomTextView: UITextView!
    @IBOutlet weak var pointerLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func onboardAnimations() {
        UIView.animate(withDuration: 0.5, animations: {
            self.welcomeStackView.center.y -= 50
            self.welcomeStackView.alpha = 0.0
        }) { (_) in
            UIView.animate(withDuration: 0.5) {
                self.welcomeStackView.center.y += 50
                self.welcomeStackView.alpha = 1.0
            }
        }
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
