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

        // Do any additional setup after loading the view.
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
