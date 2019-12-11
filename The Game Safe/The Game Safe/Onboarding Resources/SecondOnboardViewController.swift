//
//  SecondOnboardViewController.swift
//  The Game Safe
//
//  Created by Alex Shillingford on 11/19/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class SecondOnboardViewController: UIViewController {
    
    @IBOutlet weak var topTextView: UITextView!
    @IBOutlet weak var segmentControlImageView: UIImageView!
    @IBOutlet weak var easyTextView: UITextView!
    @IBOutlet weak var mediumTextView: UITextView!
    @IBOutlet weak var hardTextView: UITextView!
    @IBOutlet weak var disclaimerTextView: UITextView!
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
            launchOnboardAnimations()
            hasAnimated = true
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if hasAnimated == false {
            resetAnimations()
        }
    }
    
    func launchOnboardAnimations() {
        UIView.animateKeyframes(withDuration: 6, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.08) {
                self.topTextView.center.y += 50
                self.topTextView.alpha = 1
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.08, relativeDuration: 0.08) {
                self.segmentControlImageView.center.y += 50
                self.segmentControlImageView.alpha = 1
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.16, relativeDuration: 0.08) {
                self.easyTextView.center.y += 50
                self.easyTextView.alpha = 1
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.08) {
                self.mediumTextView.center.y += 50
                self.mediumTextView.alpha = 1
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.08) {
                self.hardTextView.center.y += 50
                self.hardTextView.alpha = 1
            }

            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.08) {
                self.disclaimerTextView.center.y += 25
                self.disclaimerTextView.alpha = 1
            }
        }, completion: nil)
    }
    
    func resetAnimations() {
        self.topTextView.center.y -= 50
        self.topTextView.alpha = 0
        self.segmentControlImageView.center.y -= 50
        self.segmentControlImageView.alpha = 0
        self.easyTextView.center.y -= 50
        self.easyTextView.alpha = 0
        self.mediumTextView.center.y -= 50
        self.mediumTextView.alpha = 0
        self.hardTextView.center.y -= 50
        self.hardTextView.alpha = 0
        self.disclaimerTextView.center.y -= 50
        self.disclaimerTextView.alpha = 0
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
