//
//  ThirdOnboardViewController.swift
//  The Game Safe
//
//  Created by Alex Shillingford on 12/11/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class ThirdOnboardViewController: UIViewController {
    
    @IBOutlet weak var topTextView: UITextView!
    @IBOutlet weak var startButtonImageView: UIImageView!
    @IBOutlet weak var middleTextView: UITextView!
    @IBOutlet weak var disclosureTextView: UITextView!
    @IBOutlet weak var bottomTextView: UITextView!
    var hasAnimated: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        if hasAnimated == false {
            resetAnimations()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if hasAnimated == false {
            launchAnimations()
            hasAnimated = true
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if hasAnimated == false {
            resetAnimations()
        }
    }
    
    func launchAnimations() {
        UIView.animateKeyframes(withDuration: 4.0, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.08) {
                self.topTextView.alpha = 1
            }
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.08) {
                self.startButtonImageView.alpha = 1.0
                self.startButtonImageView.transform = .identity
            }
            UIView.addKeyframe(withRelativeStartTime: 0.48, relativeDuration: 0.16) {
                self.middleTextView.alpha = 1
            }
            UIView.addKeyframe(withRelativeStartTime: 0.64, relativeDuration: 0.16) {
                self.disclosureTextView.alpha = 1
            }
            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.16) {
                self.bottomTextView.alpha = 1
            }
        }, completion: nil)
    }
    
    func resetAnimations() {
        self.startButtonImageView.alpha = 0
        self.startButtonImageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        self.topTextView.alpha = 0
        self.middleTextView.alpha = 0
        self.disclosureTextView.alpha = 0
        self.bottomTextView.alpha = 0
    }

}
