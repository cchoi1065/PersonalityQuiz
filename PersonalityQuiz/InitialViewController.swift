//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Charles Choi on 2/28/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    @IBAction func beginButtonPushed(_ sender: UIButton) {
        performSegue(withIdentifier: "initialSegue", sender: nil)
    }
    

}

